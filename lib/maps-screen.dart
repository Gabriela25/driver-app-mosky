import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/place_type.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  bool _locationGranted = false;

  final PolylinePoints polylinePoints = PolylinePoints(apiKey: "AIzaSyDj22AgylG4QwGNe-unUh6zKjZlAC5Q3eg");
  List<LatLng> polylineCoordinates = [];

  // Usar un Timer en lugar de un StreamSubscription
  Timer? _positionUpdateTimer;
  LatLng? _currentPosition;
  LatLng? _destinationPosition;

  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];
  Timer? _debounce;

  final String googleApiKey = "AIzaSyDj22AgylG4QwGNe-unUh6zKjZlAC5Q3eg";

  @override
  void initState() {
    super.initState();
    _checkPermissionsAndStartTracking();
    _searchController.addListener(_onSearchChanged);
  }

  Future<void> _checkPermissionsAndStartTracking() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      setState(() {
        _locationGranted = true;
      });
      _startLiveLocationTracking();
    } else {
      setState(() {
        _locationGranted = false;
      });
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    if (_currentPosition != null) {
      _updateMarkerAndCamera(_currentPosition!);
    }
  }

  // Método modificado para usar un temporizador para las actualizaciones periódicas
  void _startLiveLocationTracking() {
    // Obtener la posición inicial inmediatamente
    _getCurrentLocation();

    // Configurar un temporizador periódico para actualizar la ubicación cada 15 segundos
    _positionUpdateTimer = Timer.periodic(const Duration(seconds: 15), (timer) {
      _getCurrentLocation();
    });
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      LatLng newPosition = LatLng(position.latitude, position.longitude);

      // Si la nueva posición es significativamente diferente de la anterior
      if (_currentPosition == null || Geolocator.distanceBetween(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          newPosition.latitude,
          newPosition.longitude
      ) > 5) { // Umbral de 5 metros para evitar actualizaciones constantes
        _currentPosition = newPosition;
        _updateMarkerAndCamera(_currentPosition!);

        // Verificar si hay un destino y si el usuario se ha desviado
        if (_destinationPosition != null) {
          if (await _isOffRoute(_currentPosition!, _polylines.first.points)) {
            print("Usuario desviado, recalculando la ruta...");
            _getRoute(_currentPosition!, _destinationPosition!);
          }
        }
      }
    } catch (e) {
      print("Error obteniendo la ubicación: $e");
    }
  }

  // Nuevo método para verificar si el usuario se ha desviado de la ruta
  Future<bool> _isOffRoute(LatLng currentPosition, List<LatLng> polyline) async {
    // Umbral de desviación en metros (ej. 30 metros)
    const double offRouteThreshold = 30;

    if (polyline.isEmpty) {
      return false;
    }

    // Calcula la distancia de la posición actual a cada segmento de la polilínea
    double closestDistance = double.infinity;
    for (int i = 0; i < polyline.length - 1; i++) {
      LatLng start = polyline[i];
      LatLng end = polyline[i + 1];

      double distance = await Geolocator.distanceBetween(
        currentPosition.latitude, currentPosition.longitude,
        start.latitude, start.longitude,
      );
      closestDistance = distance < closestDistance ? distance : closestDistance;

      distance = await Geolocator.distanceBetween(
        currentPosition.latitude, currentPosition.longitude,
        end.latitude, end.longitude,
      );
      closestDistance = distance < closestDistance ? distance : closestDistance;
    }

    return closestDistance > offRouteThreshold;
  }


  void _updateMarkerAndCamera(LatLng newPosition) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('currentLocation'),
          position: newPosition,
          infoWindow: const InfoWindow(title: 'Tu ubicación actual'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        ),
      );
    });

    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: newPosition,
          zoom: 18.0,
        ),
      ),
    );
  }

  void _getRoute(LatLng origin, LatLng destination) async {
    PolylineRequest request = PolylineRequest(
      origin: PointLatLng(origin.latitude, origin.longitude),
      destination: PointLatLng(destination.latitude, destination.longitude),
      mode: TravelMode.driving,
    );

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      request: request,
    );

    if (result.points.isNotEmpty) {
      polylineCoordinates.clear();
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }

      setState(() {
        _polylines.clear();
        _polylines.add(Polyline(
          polylineId: const PolylineId("route"),
          color: Colors.blue,
          width: 5,
          points: polylineCoordinates,
        ));
      });
    }
  }

  Future<List<dynamic>> searchPlaces(String query, {double? lat, double? lng, String? countryCode}) async {
    if (query.isEmpty) {
      return [];
    }
    String url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$googleApiKey';
    if (lat != null && lng != null) {
      url += '&location=$lat,$lng&radius=50000';
    }
    if (countryCode != null && countryCode.isNotEmpty) {
      url += '&components=country:$countryCode';
    }
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 'OK') {
        return data['predictions'];
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  Future<dynamic> getPlaceDetails(String placeId) async {
    String url = 'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$googleApiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 'OK') {
        return data['result'];
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  void dispose() {
    // Es crucial cancelar el temporizador cuando el widget se elimina
    _positionUpdateTimer?.cancel();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final results = await searchPlaces(
        _searchController.text,
        lat: _currentPosition?.latitude,
        lng: _currentPosition?.longitude,
        countryCode: 've',
      );
      setState(() {
        _searchResults = results;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rastreo con Destino'),
        backgroundColor: Colors.blue[700],
      ),
      body: _locationGranted
          ? Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _currentPosition ?? const LatLng(-0.1807, -78.4678),
              zoom: 12.0,
            ),
            markers: _markers,
            polylines: _polylines,
            myLocationEnabled: true,
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Buscar lugar...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                if (_searchResults.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: _searchResults.length,
                        itemBuilder: (context, index) {
                          final prediction = _searchResults[index];
                          return ListTile(
                            title: Text(prediction['description']),
                            leading: const Icon(Icons.location_on),
                            onTap: () async {
                              final placeId = prediction['place_id'];
                              final placeDetails = await getPlaceDetails(placeId);

                              if (placeDetails != null) {
                                final geometry = placeDetails['geometry'];
                                final location = geometry['location'];
                                final lat = location['lat'];
                                final lng = location['lng'];

                                _destinationPosition = LatLng(lat, lng);
                                print('Destino seleccionado: ${_destinationPosition!}');

                                if (_currentPosition != null) {
                                  _getRoute(_currentPosition!, _destinationPosition!);

                                  setState(() {
                                    _markers.add(
                                      Marker(
                                        markerId: const MarkerId('destination'),
                                        position: _destinationPosition!,
                                        infoWindow: InfoWindow(title: prediction['description']),
                                        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
                                      ),
                                    );
                                    _searchResults.clear();
                                    _searchController.clear();
                                  });

                                  mapController.animateCamera(
                                    CameraUpdate.newCameraPosition(
                                      CameraPosition(
                                        target: _destinationPosition!,
                                        zoom: 15.0,
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      )
          : const Center(
        child: Text('Permiso de ubicación no concedido'),
      ),
    );
  }
}