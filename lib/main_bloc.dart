
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:sms_firebase/schema.gql.dart';

import 'graphql/order.fragment.graphql.dart';
import 'main.graphql.dart';

abstract class MainEvent {}

class DriverUpdated extends MainEvent {
  Fragment$BasicProfile driver;

  DriverUpdated(this.driver);
}

class VersionStatusEvent extends MainEvent {
  Enum$VersionStatus status;
  VersionStatusEvent(this.status);
}

class AvailableOrdersUpdated extends MainEvent {
  List<Fragment$AvailableOrder> orders;

  AvailableOrdersUpdated(this.orders);
}

class AvailabledOrderAdded extends MainEvent {
  Fragment$AvailableOrder order;

  AvailabledOrderAdded(this.order);
}

class AvailableOrderRemoved extends MainEvent {
  Fragment$AvailableOrder order;

  AvailableOrderRemoved(this.order);
}

class SelectedOrderChanged extends MainEvent {
  int index;

  SelectedOrderChanged(this.index);
}

class CurrentOrderUpdated extends MainEvent {
  Fragment$CurrentOrder order;

  CurrentOrderUpdated(this.order);
}

abstract class MainState extends Equatable {
  final Fragment$BasicProfile? driver;
  final List<MarkerData> markers;

  const MainState(this.driver, this.markers);
}

class StatusUnregistered extends MainState {
  StatusUnregistered(driver) : super(driver, []);

  @override
  List<Object?> get props => [driver];
}

class StatusOffline extends MainState {
  StatusOffline(Fragment$BasicProfile? driver) : super(driver, []);

  @override
  List<Object?> get props => [driver];
}

class RequireUpdateState extends MainState {
  RequireUpdateState() : super(null, []);

  @override
  List<Object?> get props => [];
}

class StatusOnline extends MainState {
  final List<Fragment$AvailableOrder> orders;
  final Fragment$AvailableOrder? selectedOrder;

  StatusOnline({driver, required this.orders, this.selectedOrder})
      : super(
            driver,
            selectedOrder != null
                ? selectedOrder.points
                    .asMap()
                    .entries
                    .map((e) => MarkerData(
                        id: e.value.lat.toString(),
                        position: LatLng(e.value.lat, e.value.lng),
                        address: selectedOrder.addresses[e.key]))
                    .toList()
                : []);

  @override
  List<Object?> get props => [driver, orders, selectedOrder];
}

class StatusInService extends MainState {
  final LatLng? currentLocation;

  static const List<Enum$OrderStatus> statusesWithMarker = [
    Enum$OrderStatus.DriverAccepted,
    Enum$OrderStatus.Arrived,
    Enum$OrderStatus.WaitingForPrePay,
    Enum$OrderStatus.Started,
    Enum$OrderStatus.WaitingForPostPay,
  ];

  static const List<Enum$OrderStatus> pickupStatuses = [
    Enum$OrderStatus.DriverAccepted,
    Enum$OrderStatus.Arrived,
    Enum$OrderStatus.WaitingForPrePay,
  ];

  StatusInService(driver, {this.currentLocation})
      : super(driver, _buildMarkers(driver));

  static List<MarkerData> _buildMarkers(Fragment$BasicProfile? driver) {
    final currentOrder = driver?.currentOrders.firstOrNull;
    if (currentOrder == null ||
        !statusesWithMarker.contains(currentOrder.status) ||
        currentOrder.points.isEmpty) {
      print(
          'StatusInService._buildMarkers -> no markers. order=${currentOrder?.id}, status=${currentOrder?.status}, points=${currentOrder?.points.length ?? 0}');
      return [];
    }

    final markerIndex = _getMarkerIndex(currentOrder);
    if (markerIndex < 0 || markerIndex >= currentOrder.points.length) {
      print(
          'StatusInService._buildMarkers -> invalid markerIndex=$markerIndex for order=${currentOrder.id}, points=${currentOrder.points.length}, destinationArrivedTo=${currentOrder.destinationArrivedTo}');
      return [];
    }

    final point = currentOrder.points[markerIndex];
    final addressIndex = currentOrder.addresses.isEmpty
        ? -1
        : (markerIndex < currentOrder.addresses.length
            ? markerIndex
            : currentOrder.addresses.length - 1);

    print(
        'StatusInService._buildMarkers -> order=${currentOrder.id}, status=${currentOrder.status}, markerIndex=$markerIndex, lat=${point.lat}, lng=${point.lng}, addressIndex=$addressIndex, address=${addressIndex >= 0 ? currentOrder.addresses[addressIndex] : ''}, points=${currentOrder.points.map((p) => '(${p.lat},${p.lng})').join(' | ')}');

    return [
      MarkerData(
        id: 'current-order-$markerIndex-${point.lat}-${point.lng}',
        position: LatLng(point.lat, point.lng),
        address: addressIndex >= 0 ? currentOrder.addresses[addressIndex] : '',
      )
    ];
  }

  static int _getMarkerIndex(Fragment$CurrentOrder order) {
    if (pickupStatuses.contains(order.status)) {
      return 0;
    }

    final destinationIndex = order.destinationArrivedTo + 1;
    if (destinationIndex < order.points.length) {
      return destinationIndex;
    }

    return order.points.length - 1;
  }

  @override
  List<Object?> get props => [
        driver?.currentOrders.firstOrNull?.status,
        driver?.currentOrders.firstOrNull?.destinationArrivedTo,
        markers.map((e) => e.address).join(','),
        currentLocation
      ];
}

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(StatusOffline(null)) {
    on<VersionStatusEvent>(((event, emit) => emit(RequireUpdateState())));

    on<DriverUpdated>((event, emit) {
      print("Driver updated: ${event.driver.status}");
      print(
          "DriverUpdated currentOrders length: ${event.driver.currentOrders.length}");
      if (event.driver.currentOrders.isNotEmpty) {
        print(
            "DriverUpdated first currentOrder: id=${event.driver.currentOrders.first.id}, status=${event.driver.currentOrders.first.status}");
      }
      switch (event.driver.status) {
        case Enum$DriverStatus.Online:
          emit(StatusOnline(driver: event.driver, orders: const []));
          break;

        case Enum$DriverStatus.InService:
          emit(StatusInService(event.driver));
          break;

        case Enum$DriverStatus.Offline:
          emit(StatusOffline(event.driver));
          break;

        case Enum$DriverStatus.Blocked:
        case Enum$DriverStatus.WaitingDocuments:
        case Enum$DriverStatus.PendingApproval:
        case Enum$DriverStatus.SoftReject:
        case Enum$DriverStatus.HardReject:
        case Enum$DriverStatus.PreRegistered:
          //emit(StatusUnregistered(event.driver));
          //break;
        case Enum$DriverStatus.$unknown:
          emit(StatusUnregistered(event.driver));
      }
    });

    on<AvailableOrdersUpdated>((event, emit) {
      if (state is! StatusOnline) {
        return;
      }
      // if ((listEquals((state as StatusOnline).orders.map((e) => e.id).toList(),
      //         event.orders.map((e) => e.id).toList())) &&
      //     event.location?.latitude ==
      //         (state as StatusOnline).currentLocation?.latitude) {
      //   return;
      // }
      List<Fragment$AvailableOrder> orders = event.orders;
      final sumOldIds = (state as StatusOnline).orders.fold<int>(
          0, (previousValue, element) => previousValue + int.parse(element.id));
      final sumNewIds = orders.fold<int>(
          0, (value, element) => value + int.parse(element.id));
      if (sumNewIds != sumOldIds) {
        final selectedOrderId = (state as StatusOnline).selectedOrder?.id;
        emit(StatusOnline(
            driver: state.driver,
            orders: orders,
            selectedOrder: orders.firstWhereOrNull(
                (element) => element.id == selectedOrderId)));
      }
    });

    on<AvailabledOrderAdded>((event, emit) {
      if (state is StatusOnline &&
          (state as StatusOnline).orders.firstWhereOrNull(
                  (element) => element.id == event.order.id) ==
              null) {
        final ringtonePlayer = FlutterRingtonePlayer();
        ringtonePlayer.play(
            fromAsset: "images/notification.mp3",
            looping: false,
            volume: 1.0,
            asAlarm: true);
        //(state as StatusOnline).orders.add(event.order);
        final newOrders =
            (state as StatusOnline).orders.followedBy([event.order]).toList();
        emit(StatusOnline(
            driver: state.driver,
            orders: newOrders,
          selectedOrder: (state as StatusOnline).selectedOrder));
      }
    });

    on<AvailableOrderRemoved>((event, emit) {
      if (state is StatusOnline &&
          (state as StatusOnline).orders.firstWhereOrNull(
                  (element) => element.id == event.order.id) !=
              null) {
        (state as StatusOnline)
            .orders
            .removeWhere((element) => element.id == event.order.id);
        emit(StatusOnline(
            driver: state.driver,
            orders: (state as StatusOnline).orders,
            selectedOrder:
                (state as StatusOnline).selectedOrder?.id == event.order.id
              ? null
                    : (state as StatusOnline).selectedOrder));
      }
    });

    on<SelectedOrderChanged>((event, emit) {
      if (state is StatusOnline) {
        emit(StatusOnline(
            driver: state.driver,
            orders: (state as StatusOnline).orders,
            selectedOrder: (state as StatusOnline).orders[event.index]));
      }
    });

    on<CurrentOrderUpdated>((event, emit) {
      final endedStatuses = [
        Enum$OrderStatus.RiderCanceled,
        Enum$OrderStatus.DriverCanceled,
        Enum$OrderStatus.Finished,
        Enum$OrderStatus.WaitingForReview
      ];
      final order = event.order;
      print(
          "CurrentOrderUpdated received: id=${order.id}, status=${order.status}");
      print(
          "CurrentOrderUpdated before local sync currentOrders length: ${state.driver?.currentOrders.length ?? 0}");
      if (endedStatuses.contains(order.status)) {
        // TODO: Verify commenting out these lines didn't caused malfunction, if so, remove them
        // state.driver!.status = Enum$DriverStatus.Online;
        // state.driver!.currentOrders = [];
        print("CurrentOrderUpdated ended status detected, returning to StatusOnline");
        emit(StatusOnline(driver: state.driver, orders: const []));
      } else {
        if (state.driver?.currentOrders.isNotEmpty ?? false) {
          print(
              "CurrentOrderUpdated removing previous currentOrder: id=${state.driver?.currentOrders.first.id}, status=${state.driver?.currentOrders.first.status}");
          state.driver?.currentOrders.removeAt(0);
        }
        state.driver?.currentOrders
            .add(Query$Me$driver$currentOrders.fromJson(order.toJson()));
        print(
            "CurrentOrderUpdated after local sync currentOrders length: ${state.driver?.currentOrders.length ?? 0}");
        if (state.driver?.currentOrders.isNotEmpty ?? false) {
          print(
              "CurrentOrderUpdated first currentOrder after sync: id=${state.driver?.currentOrders.first.id}, status=${state.driver?.currentOrders.first.status}");
        }

        final acceptedOrder = state.driver?.currentOrders.firstOrNull;
        print(
            "ORDER ACCEPTED -> driverStatus=${state.driver?.status}, currentOrders=${state.driver?.currentOrders.length ?? 0}, orderId=${acceptedOrder?.id}, orderStatus=${acceptedOrder?.status}, pickup=${acceptedOrder?.addresses.firstOrNull}, destination=${acceptedOrder?.addresses.length != null && (acceptedOrder?.addresses.length ?? 0) > 1 ? acceptedOrder?.addresses[1] : null}");

        emit(StatusInService(state.driver));
      }
    });
  }
}

class MarkerData {
  String id;
  LatLng position;
  String address;

  MarkerData({required this.id, required this.position, required this.address});
}
