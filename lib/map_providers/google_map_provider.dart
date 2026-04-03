import 'dart:async';
import 'dart:ui';

import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme-ride.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as map_toolkit;


import '../current_location_cubit.dart';
import '../graphql/order.fragment.graphql.dart';
import '../main_bloc.dart';
import '../schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'open_street_map_provider.dart';

const _googleDirectionsApiKey = 'AIzaSyDj22AgylG4QwGNe-unUh6zKjZlAC5Q3eg';

// ignore: must_be_immutable
class GoogleMapProvider extends StatefulWidget {

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(fallbackLocation.latitude, fallbackLocation.longitude),
    zoom: 14.4746,
  );

  GoogleMapProvider({super.key});

  @override
  State<GoogleMapProvider> createState() => _GoogleMapProviderState();
}

class _GoogleMapProviderState extends State<GoogleMapProvider> {
  final Completer<GoogleMapController> _controller = Completer();
  final PolylinePoints _polylinePoints =
      PolylinePoints(apiKey: _googleDirectionsApiKey);
  final Map<String, List<LatLng>> _routeCache = {};

  Set<Marker> _serviceMarkers = <Marker>{};
  Set<Polyline> _servicePolylines = <Polyline>{};
  int _serviceOverlayRequestId = 0;

  final Stream<geo.Position> streamServerLocation =
      geo.Geolocator.getPositionStream(
          locationSettings: const geo.LocationSettings(distanceFilter: 50));

  static const List<Enum$OrderStatus> _pickupStatuses = [
    Enum$OrderStatus.DriverAccepted,
    Enum$OrderStatus.Arrived,
    Enum$OrderStatus.WaitingForPrePay,
  ];

  @override
  void initState() {
    super.initState();

    // Solicitar permisos de ubicación si no están otorgados
    geo.Geolocator.checkPermission().then((permission) {
      if (permission == geo.LocationPermission.denied) {
        geo.Geolocator.requestPermission();
      }
    });

    // Obtener la última ubicación conocida y centrar el mapa
    geo.Geolocator.getLastKnownPosition().then((value) async {
      if (value != null) {
        (await _controller.future).animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(value.latitude, value.longitude),
              zoom: 15,
            ),
          ),
        );
      } else {
        // Si no hay última ubicación conocida, obtener la ubicación actual
        geo.Geolocator.getCurrentPosition().then((currentPosition) async {
          (await _controller.future).animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(currentPosition.latitude, currentPosition.longitude),
                zoom: 15,
              ),
            ),
          );
        }).catchError((error) {
          // Manejar errores al obtener la ubicación actual
          debugPrint('Error al obtener la ubicación actual: $error');
        });
      }
    }).catchError((error) {
      // Manejar errores al obtener la última ubicación conocida
      debugPrint('Error al obtener la última ubicación conocida: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return BlocConsumer<MainBloc, MainState>(
              listenWhen: (previous, next) =>
                  next is StatusOnline || next is StatusInService,
              listener: (context, state) async {
                geo.Geolocator.checkPermission().then((value) {
                  if (value == geo.LocationPermission.denied) {
                    geo.Geolocator.requestPermission();
                  }
                });
                final currentLocation =
                    context.read<CurrentLocationCubit>().state.location;
                if (state is StatusInService) {
                  await _refreshServiceOverlays(
                    state,
                    currentLocation == null
                        ? null
                        : LatLng(
                            currentLocation.latitude,
                            currentLocation.longitude,
                          ),
                  );
                } else if (_serviceMarkers.isNotEmpty ||
                    _servicePolylines.isNotEmpty) {
                  setState(() {
                    _serviceMarkers = <Marker>{};
                    _servicePolylines = <Polyline>{};
                  });
                }
                if (state is StatusOnline && currentLocation != null) {
                  (await _controller.future).animateCamera(
                      CameraUpdate.newLatLngZoom(
                          LatLng(currentLocation.latitude,
                              currentLocation.longitude),
                          16));
                }
                if ((state is StatusOnline && currentLocation == null) ||
                    (state is StatusInService &&
                        state.currentLocation == null)) {
                  geo.Geolocator.getCurrentPosition().then(
                      (value) => onLocationUpdated(value, mainBloc, context));
                }
              },
              builder: (context, state) => Stack(
                    children: [
                      BlocConsumer<CurrentLocationCubit, CurrentLocationState>(
                        listener: (context, currentLocationState) async {
                          if (state is StatusInService) {
                            await _refreshServiceOverlays(
                              state,
                              currentLocationState.location == null
                                  ? null
                                  : LatLng(
                                      currentLocationState.location!.latitude,
                                      currentLocationState.location!.longitude,
                                    ),
                            );
                            return;
                          }

                          if (currentLocationState.location == null ||
                              currentLocationState.radius == null ||
                              state is! StatusOnline ||
                              (state).orders.isNotEmpty) {
                            return;
                          }

                          final northeast =
                              map_toolkit.SphericalUtil.computeOffset(
                                  map_toolkit.LatLng(
                                      currentLocationState.location!.latitude,
                                      currentLocationState.location!.longitude),
                                  currentLocationState.radius!,
                                  45);
                          final southwest =
                              map_toolkit.SphericalUtil.computeOffset(
                                  map_toolkit.LatLng(
                                      currentLocationState.location!.latitude,
                                      currentLocationState.location!.longitude),
                                  currentLocationState.radius!,
                                  225);
                          final bounds = LatLngBounds(
                              southwest: LatLng(
                                  southwest.latitude, southwest.longitude),
                              northeast: LatLng(
                                  northeast.latitude, northeast.longitude));
                          (await _controller.future).animateCamera(
                              CameraUpdate.newLatLngBounds(bounds, 100));
                        },
                        builder: (context, currentLocationState) {
                          return GoogleMap(
                            initialCameraPosition: widget._kGooglePlex,
                            padding: const EdgeInsets.only(bottom: 80),
                            myLocationEnabled: true,
                            polylines: state is StatusInService
                              ? _servicePolylines
                              : <Polyline>{},
                            circles: state.driver?.searchDistance == null ||
                                    currentLocationState.location == null
                                ? <Circle>{}
                                : <Circle>{
                                    Circle(
                                        circleId:
                                            const CircleId('searchDistance'),
                                        center: LatLng(
                                            currentLocationState
                                                .location!.latitude,
                                            currentLocationState
                                                .location!.longitude),
                                        radius:
                                            (currentLocationState.radius ?? 0)
                                                .toDouble(),
                                        fillColor: Colors.blue.withOpacity(0.3),
                                        strokeColor: CustomTheme
                                            .secondaryColors.shade200,
                                        strokeWidth: 2)
                                  },
                            myLocationButtonEnabled: state is StatusOffline ||
                                (state is StatusOnline && state.orders.isEmpty),
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            markers: state is StatusInService
                                ? _serviceMarkers
                                : state.markers
                                    .map((e) => Marker(
                                        markerId: MarkerId(e.id),
                                        icon: BitmapDescriptor
                                            .defaultMarkerWithHue(
                                                BitmapDescriptor.hueRed),
                                        position: LatLng(
                                            e.position.latitude,
                                            e.position.longitude)))
                                    .toSet(),
                          );
                        },
                      ),
                      if (state is! StatusOffline)
                        StreamBuilder<geo.Position>(
                            stream: streamServerLocation,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                onLocationUpdated(
                                    snapshot.data!, mainBloc, context);
                              }
                              return Container();
                            })
                    ],
                  ));
  }

  Future<void> _refreshServiceOverlays(
      StatusInService state, LatLng? currentLocation) async {
    final currentOrder = _getCurrentOrder(state);
    if (currentOrder == null || currentOrder.points.isEmpty) {
      if (_serviceMarkers.isNotEmpty || _servicePolylines.isNotEmpty) {
        setState(() {
          _serviceMarkers = <Marker>{};
          _servicePolylines = <Polyline>{};
        });
      }
      return;
    }

    final pickupPoint = _toGoogleLatLng(currentOrder.points.first);
    final destinationPoint = _getDestinationPoint(currentOrder);
    if (destinationPoint == null) {
      return;
    }

    final requestId = ++_serviceOverlayRequestId;
    final markers = <Marker>{
      Marker(
        markerId: const MarkerId('pickup-marker'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: pickupPoint,
      ),
      Marker(
        markerId: const MarkerId('destination-marker'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: destinationPoint,
      ),
    };

    final polylines = <Polyline>{};
    if (currentLocation != null && _pickupStatuses.contains(currentOrder.status)) {
      final driverToPickup = await _getDriverToPickupRoute(
        currentLocation,
        pickupPoint,
      );
      if (driverToPickup.isNotEmpty) {
        polylines.add(Polyline(
          polylineId: const PolylineId('driver-to-pickup'),
          points: driverToPickup,
          color: Colors.amber,
          width: 9,
          zIndex: 2,
          startCap: Cap.roundCap,
          endCap: Cap.roundCap,
        ));
      }
    }

    final pickupToDestination = await _getPickupToDestinationRoute(currentOrder);
    if (pickupToDestination.isNotEmpty) {
      polylines.add(Polyline(
        polylineId: const PolylineId('pickup-to-destination'),
        points: pickupToDestination,
        color: Colors.blue,
        width: 6,
        zIndex: 1,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
      ));
    }

    if (!mounted || requestId != _serviceOverlayRequestId) {
      return;
    }

    setState(() {
      _serviceMarkers = markers;
      _servicePolylines = polylines;
    });

    final focusPoints = <LatLng>[
      if (currentLocation != null) currentLocation,
      pickupPoint,
      destinationPoint,
    ];
    await _focusCamera(focusPoints);
  }

  Fragment$CurrentOrder? _getCurrentOrder(MainState state) {
    final currentOrders = state.driver?.currentOrders;
    if (currentOrders == null || currentOrders.isEmpty) {
      return null;
    }
    return currentOrders.first;
  }

  LatLng _toGoogleLatLng(Fragment$Point point) {
    return LatLng(point.lat, point.lng);
  }

  LatLng? _getDestinationPoint(Fragment$CurrentOrder order) {
    if (order.points.length < 2) {
      return null;
    }

    final destinationIndex = order.destinationArrivedTo + 1 < order.points.length
        ? order.destinationArrivedTo + 1
        : order.points.length - 1;
    return _toGoogleLatLng(order.points[destinationIndex]);
  }

  Future<List<LatLng>> _getPickupToDestinationRoute(
      Fragment$CurrentOrder order) async {
    final backendDirections = order.directions
            ?.map((e) => LatLng(e.lat, e.lng))
            .where((point) => point.latitude != 0 || point.longitude != 0)
            .toList() ??
        <LatLng>[];
    if (backendDirections.isNotEmpty) {
      return backendDirections;
    }

    final destinationPoint = _getDestinationPoint(order);
    if (destinationPoint == null) {
      return <LatLng>[];
    }

    return _getDrivingRoute(_toGoogleLatLng(order.points.first), destinationPoint);
  }

  Future<List<LatLng>> _getDriverToPickupRoute(
    LatLng currentLocation,
    LatLng pickupPoint,
  ) async {
    final route = await _getDrivingRoute(currentLocation, pickupPoint);
    if (route.isNotEmpty) {
      return route;
    }

    final distance = geo.Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      pickupPoint.latitude,
      pickupPoint.longitude,
    );

    if (distance <= 35) {
      return [currentLocation, pickupPoint];
    }

    return <LatLng>[];
  }

  Future<List<LatLng>> _getDrivingRoute(LatLng origin, LatLng destination) async {
    final cacheKey =
        '${origin.latitude},${origin.longitude}->${destination.latitude},${destination.longitude}';
    final cached = _routeCache[cacheKey];
    if (cached != null) {
      return cached;
    }

    final result = await _polylinePoints.getRouteBetweenCoordinates(
      request: PolylineRequest(
        origin: PointLatLng(origin.latitude, origin.longitude),
        destination: PointLatLng(destination.latitude, destination.longitude),
        mode: TravelMode.driving,
      ),
    );

    final route = result.points
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();
    if (route.isNotEmpty) {
      _routeCache[cacheKey] = route;
    }
    return route;
  }

  Future<void> _focusCamera(List<LatLng> points) async {
    if (points.isEmpty) {
      debugPrint('GoogleMapProvider._focusCamera -> no points');
      return;
    }

    final controller = await _controller.future;
    if (points.length == 1) {
      debugPrint(
          'GoogleMapProvider._focusCamera -> single point lat=${points.first.latitude}, lng=${points.first.longitude}');
      await controller.animateCamera(
        CameraUpdate.newLatLngZoom(points.first, 16),
      );
      return;
    }

    final bounds = boundsFromLatLngList(points);
    final sameLatitude =
        (bounds.northeast.latitude - bounds.southwest.latitude).abs() <
            0.0001;
    final sameLongitude =
        (bounds.northeast.longitude - bounds.southwest.longitude).abs() <
            0.0001;

    debugPrint(
        'GoogleMapProvider._focusCamera -> bounds SW=(${bounds.southwest.latitude},${bounds.southwest.longitude}) NE=(${bounds.northeast.latitude},${bounds.northeast.longitude}) sameLat=$sameLatitude sameLng=$sameLongitude points=${points.map((p) => '(${p.latitude},${p.longitude})').join(' | ')}');

    if (sameLatitude && sameLongitude) {
      await controller.animateCamera(
        CameraUpdate.newLatLngZoom(points.first, 16),
      );
      return;
    }

    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 100),
    );
  }
}

LatLngBounds boundsFromLatLngList(List<LatLng> list) {
  double? x0, x1, y0, y1;
  for (LatLng latLng in list) {
    if (x0 == null) {
      x0 = x1 = latLng.latitude;
      y0 = y1 = latLng.longitude;
    } else {
      if (latLng.latitude > (x1 ?? 0)) x1 = latLng.latitude;
      if (latLng.latitude < x0) x0 = latLng.latitude;
      if (latLng.longitude > (y1 ?? 0)) y1 = latLng.longitude;
      if (latLng.longitude < (y0 ?? 0)) y0 = latLng.longitude;
    }
  }
  return LatLngBounds(northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  var codec = await instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ImageByteFormat.png))!
      .buffer
      .asUint8List();
}
