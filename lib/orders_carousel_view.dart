import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:sms_firebase/schema.gql.dart';



import 'driver_distance_select_view.dart';
import 'main.graphql.dart';
import 'main_bloc.dart';
import 'order_item_view.dart';
import 'query_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class OrdersCarouselView extends StatelessWidget {
  final PageController carouselController = PageController();

  OrdersCarouselView({super.key});

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.all(16),
      child:
          Query$AvailableOrders$Widget(builder: (result, {refetch, fetchMore}) {
        if (result.isLoading || result.hasException) {
          return RidySheetView(
              child: QueryResultView(result, refetch: refetch));
        }
        return Subscription$OrderCreated$Widget(
            onSubscriptionResult: (subscriptionResult, client) {
          if (subscriptionResult.parsedData != null) {
            mainBloc.add(AvailabledOrderAdded(
                subscriptionResult.parsedData!.orderCreated));
          }
        }, builder: (created) {
          return Subscription$OrderRemoved$Widget(
              onSubscriptionResult: (subscriptionResult, client) {
            if (subscriptionResult.parsedData != null) {
              mainBloc.add(AvailableOrderRemoved(
                  subscriptionResult.parsedData!.orderRemoved));
            }
          }, builder: (removed) {
            return Mutation$UpdateOrderStatus$Widget(
                options: WidgetOptions$Mutation$UpdateOrderStatus(
                    onCompleted: (result, parsedData) {
                      print("Order status updated: $result");
                    print(
                      "UpdateOrderStatus parsedData.updateOneOrder is null: ${parsedData?.updateOneOrder == null}");
                    if (parsedData?.updateOneOrder != null) {
                    print(
                      "UpdateOrderStatus order: id=${parsedData!.updateOneOrder.id}, status=${parsedData.updateOneOrder.status}, destinationArrivedTo=${parsedData.updateOneOrder.destinationArrivedTo}");
                    print(
                      "UpdateOrderStatus order points=${parsedData.updateOneOrder.points.length}, addresses=${parsedData.updateOneOrder.addresses.length}, directions=${parsedData.updateOneOrder.directions?.length ?? 0}");
                    }
                      if (parsedData == null) return;
                      mainBloc
                          .add(CurrentOrderUpdated(parsedData.updateOneOrder));
                    },
                      onError: (error) {
                        debugPrint('Error accepting order: $error');
                        showOperationErrorMessage(context, error);
                      }),
                builder: (runMutation, result) =>
                    BlocBuilder<MainBloc, MainState>(builder: (context, state) {
                      if ((state as StatusOnline).orders.isEmpty) {
                        return const DriverDistanceSelect();
                      }
                      return SizedBox(
                        height: 220,
                        child: ListView.separated(
                          itemCount: state.orders.length,
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) => OrderItemView(
                            order: state.orders[index],
                            isActionActive: !(result?.isLoading ?? false),
                            onTap: () =>
                                mainBloc.add(SelectedOrderChanged(index)),
                            onAcceptCallback: (String orderId) async {
                              try {
                                final mutationResult = await runMutation(
                                  Variables$Mutation$UpdateOrderStatus(
                                    orderId: orderId,
                                    status: Enum$OrderStatus.DriverAccepted,
                                  ),
                                );
                                final eagerResult =
                                  (mutationResult as dynamic).eagerResult;
                                final networkResult =
                                  await (mutationResult as dynamic)
                                    .networkResult;
                                print(
                                  'UpdateOrderStatus eagerResult: $eagerResult');
                                print(
                                  'UpdateOrderStatus networkResult: $networkResult');
                                print(
                                  'UpdateOrderStatus networkResult.data: ${networkResult.data}');
                                final rawOrder = networkResult.data == null
                                  ? null
                                  : networkResult.data['updateOneOrder']
                                    as Map<String, dynamic>?;
                                print(
                                  'UpdateOrderStatus raw destinationArrivedTo: ${rawOrder?['destinationArrivedTo']} (${rawOrder?['destinationArrivedTo']?.runtimeType})');
                                print(
                                  'UpdateOrderStatus raw waitMinutes: ${rawOrder?['waitMinutes']} (${rawOrder?['waitMinutes']?.runtimeType})');
                                print(
                                  'UpdateOrderStatus networkResult.exception: ${networkResult.exception}');
                              } catch (error, stackTrace) {
                                print(
                                    'UpdateOrderStatus runMutation threw: $error');
                                print(stackTrace);
                              }
                            },
                          ),
                        ),
                      );

                      //vista de tarjeta horizontal

                      /*return PageView.builder(
                          controller: PageController(viewportFraction: 0.9),
                          itemCount: state.orders.length,
                          onPageChanged: (index) =>
                              mainBloc.add(SelectedOrderChanged(index)),
                          itemBuilder: (context, index) => OrderItemView(
                                order: state.orders[index],
                                isActionActive: !(result?.isLoading ?? false),
                                onAcceptCallback: (String orderId) async {
                                  runMutation(
                                      Variables$Mutation$UpdateOrderStatus(
                                          orderId: orderId,
                                          status:
                                              Enum$OrderStatus.DriverAccepted));
                                },
                              ));*/
                    }));
          });
        });
      }),
    );
  }
}
