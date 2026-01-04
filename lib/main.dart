import 'package:client_shared/config.dart';
import 'package:client_shared/map_providers.dart';
import 'package:client_shared/theme/theme-ride.dart';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:developer' as developer;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sms_firebase/drawer_view.dart';
import 'package:sms_firebase/maps-screen.dart';
import 'package:country_codes/country_codes.dart';

import 'package:sms_firebase/query_result_view.dart';
import 'package:sms_firebase/register/get_driver_dynamic.dart';
import 'package:sms_firebase/register/register_view.dart';
import 'package:sms_firebase/schema.gql.dart';
import 'package:sms_firebase/unregistered_driver_messages_view.dart';

import 'config.dart';
import 'current_location_cubit.dart';
import 'graphql_provider.dart';
import 'l10n/messages.dart';
import 'main.graphql.dart';
import 'main_bloc.dart';
import 'map_providers/google_map_provider.dart';
import 'map_providers/open_street_map_provider.dart';
import 'notice_bar.dart';
import 'order_status_card_view.dart';
import 'orders_carousel_view.dart';

// Inicialización de Flutter Local Notifications
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Manejo de mensajes en segundo plano
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Mensaje en background: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();

  // Abrir todos los boxes antes de runApp
  await Future.wait([
    Hive.openBox('graphql'),
    Hive.openBox('graphqlCache'),
    Hive.openBox('graphqlClientStore'),
    Hive.openBox('user'),
    Hive.openBox('settings'),
  ]);

  await CountryCodes.init();
  final locale = CountryCodes.detailsForLocale();
  if (locale.dialCode != null) {
    defaultCountryCode = locale.dialCode!;
  }

  // Firebase App Check (opcional)
  /*
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );
  String? debugToken = await FirebaseAppCheck.instance.getToken(true);
  developer.log("🔥 Debug Token de App Check: $debugToken");
  */

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Inicialización de Flutter Local Notifications
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Consulta manual GraphQL para depuración
  final httpLink = HttpLink("${serverUrl}graphql");
  final authLink =
      AuthLink(getToken: () async => 'Bearer ${Hive.box('user').get('jwt')}');

  final link = authLink.concat(httpLink);
  final client = GraphQLClient(
    cache: GraphQLCache(),
    link: link,
  );
  print('main: JWT = ${Hive.box('user').get('jwt')}');
  print('main: driverId = ${Hive.box('user').get('driverId')}');
  // Importa la función en la parte superior: import 'package:sms_firebase/register/get_driver_dynamic.dart';
  //await consultarDriverManual(client);

  runApp(const MyAppRoot()); // ⚠️ Aquí va el único MaterialApp
}

class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box('user').listenable(),
      builder: (context, Box box, widget) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<MainBloc>(
                lazy: false, create: (context) => MainBloc()),
            BlocProvider<CurrentLocationCubit>(
                lazy: false, create: (context) => CurrentLocationCubit())
          ],
          child: MyGraphqlProvider(
            uri: "${serverUrl}graphql",
            subscriptionUri: "${wsUrl}graphql",
            jwt: Hive.box('user').get('jwt').toString(),
            builder: (context, child) {},
            child: ValueListenableBuilder<Box>(
                valueListenable:
                    Hive.box('settings').listenable(keys: ['language']),
                builder: (context, box, snapshot) {
                  return MaterialApp(
                      title: 'Ride Amigo Conductor',
                      navigatorObservers: [defaultLifecycleObserver],
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: S.localizationsDelegates,
                      supportedLocales: S.supportedLocales,
                      locale: Locale(box.get('language') ??
                          //'en'
                          'es'),
                      routes: {
                        'register': (context) => const RegisterView(),
                        /*'profile': (context) => const ProfileView(),
                        'trip-history': (context) =>
                        const TripHistoryListView(),
                        'announcements': (context) => const AnnouncementsView(),
                        'earnings': (context) => const EarningsView(),
                        'chat': (context) => const ChatView(),
                        'wallet': (context) => const WalletView(),
                        'settings': (context) => const SettingsPage()*/
                      },
                      theme: CustomTheme.theme1,
                      home: MyHomePage());
                }),
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Refetch? refetch;

  MyHomePage({super.key}) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final mainBloc = context.read<MainBloc>();
    final locationCubit = context.read<CurrentLocationCubit>();
    return Scaffold(
        key: scaffoldKey,
        drawer: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Drawer(
            backgroundColor: CustomTheme.primaryColors.shade100,
            child: BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                return DrawerView(
                  driver: state.driver,
                );
              },
            ),
          ),
        ),
        body: ValueListenableBuilder(
            valueListenable: Hive.box('user').listenable(),
            builder: (context, Box box, widget) {
              if (Hive.box('user').get('jwt') == null) {
                return UnregisteredDriverMessagesView(
                  driver: null,
                  refetch: refetch,
                );
              }
              return LifecycleWrapper(
                  onLifecycleEvent: (event) {
                    if (event == LifecycleEvent.active) {
                      refetch?.call();
                      updateNotificationId(context);
                    }
                  },
                  child: FutureBuilder<PackageInfo>(
                      future: PackageInfo.fromPlatform(),
                      builder: (context, snapshot) {
                        final driverId = Hive.box('user').get('driverId');
                        if (driverId == null ||
                            driverId.toString() == 'null' ||
                            driverId.toString().isEmpty) {
                          // Si no hay driverId, mostrar pantalla para llenar datos de registro
                          return RegisterView();
                        }
                        final meVariables = Variables$Query$Me(
                          versionCode:
                              int.parse(snapshot.data?.buildNumber ?? "999999"),
                          id: driverId.toString(),
                        );

                        print('Consulta Me (AST): $documentNodeQueryMe.');
                        print('Variables Me: ${meVariables.toJson()}');

                        return Query$Me$Widget(
                            options: Options$Query$Me(
                                variables: Variables$Query$Me(
                                    versionCode: int.parse(
                                        snapshot.data?.buildNumber ?? "999999"),
                                    id: Hive.box('user')
                                            .get('driverId')
                                            .toString() ??
                                        ''),
                                onComplete: (result, parsedData) {
                                  print('========== ME COMPLETADO ==========');
                                  print('result.data (raw): ${result}');
                                  print('parsedData: $parsedData');
                                  print('result.exception: ${result}');
                                  if (parsedData?.requireUpdate ==
                                      Enum$VersionStatus.MandatoryUpdate) {
                                    mainBloc.add(VersionStatusEvent(
                                        parsedData!.requireUpdate));
                                  } else {
                                    if (parsedData?.driver != null) {
                                      mainBloc.add(
                                          DriverUpdated(parsedData!.driver));
                                      locationCubit.setRadius(
                                          parsedData.driver.searchDistance);
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                                title: const Text("Driver"),
                                                content: const Text(
                                                    "Driver information not found, Do you want to logout and login again?"),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        box.delete('jwt');
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text("Yes")),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text("No"))
                                                ]);
                                          });
                                    }
                                  }
                                }),
                            builder: (result, {refetch, fetchMore}) {
                              if (result.isLoading || result.hasException) {
                                return QueryResultView(result,
                                    refetch: refetch);
                              }
                              this.refetch = refetch;
                              return BlocConsumer<MainBloc, MainState>(
                                  listenWhen:
                                      (MainState previous, MainState next) {
                                if (previous is StatusUnregistered &&
                                    next is StatusUnregistered &&
                                    previous.driver?.status ==
                                        next.driver?.status) {
                                  return false;
                                }
                                if ((previous is StatusOnline) &&
                                    next is StatusOnline) {
                                  return false;
                                }
                                return true;
                              }, listener: (context, state) {
                                if (state is StatusOnline) {
                                  refetch!();
                                }
                              }, builder: (context, state) {
                                if (state is StatusUnregistered) {
                                  // Navegación automática si el status es PreRegistered
                                  if (state.driver?.status == Enum$DriverStatus.PreRegistered) {
                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                      Navigator.of(context).pushReplacementNamed('register_contact_details');
                                    });
                                  }
                                  return UnregisteredDriverMessagesView(
                                      driver: state.driver, refetch: refetch);
                                }
                                return Stack(children: [
                                  ValueListenableBuilder(
                                      valueListenable: Hive.box('settings')
                                          .listenable(keys: ['mapProvider']),
                                      builder: (context, Box box, widget) =>
                                          getMapProvider(box)),
                                  SafeArea(
                                    minimum: const EdgeInsets.all(16),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _getMenuButton(),
                                        //4/3/2024 comentado por cartera
                                        /*const Spacer(),
                                        _getWalletButton(context, state),*/
                                        if (state is! StatusInService)
                                          const Spacer(),
                                        _getOnlineOfflineButton(context, state)
                                      ],
                                    ),
                                  ),
                                  if (state is StatusOffline ||
                                      (state is StatusOnline &&
                                          state.orders.isEmpty))
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: NoticeBar(
                                          title: state is StatusOffline
                                              ? S
                                                  .of(context)
                                                  .status_offline_description
                                              : S
                                                  .of(context)
                                                  .status_online_description),
                                    ),
                                  if (state is StatusOnline)
                                    Positioned(
                                      bottom: 0,
                                      child: SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 320,
                                          child: OrdersCarouselView()),
                                    ),
                                  if (state is StatusInService &&
                                      state.driver!.currentOrders.isNotEmpty)
                                    Positioned(
                                      bottom: 0,
                                      child: Subscription$OrderUpdated$Widget(
                                        onSubscriptionResult:
                                            (subscriptionResult, client) {
                                          if (subscriptionResult.data != null) {
                                            WidgetsBinding.instance
                                                .addPostFrameCallback((_) {
                                              refetch!();
                                            });
                                          }
                                        },
                                        builder: (result) {
                                          print(
                                              'result.hasException: [33m${result.hasException}[0m');
                                          print(
                                              'result.exception: [31m${result.exception}[0m');
                                          return SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: OrderStatusCardView(
                                              order: state
                                                  .driver!.currentOrders.first,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                ]);
                              });
                            });
                      }));
            }));
  }

  Widget getMapProvider(Box box) {
    final String? provider = box.get('mapProvider', defaultValue: null);
    if (provider == null) {
      switch (mapProvider) {
        case MapProvider.googleMap:
          return GoogleMapProvider();
        default:
          // return  GoogleMapProvider();
          return const OpenStreetMapProvider();
      }
    }
    switch (provider) {
      case 'googlemap':
        return GoogleMapProvider();
      default:
        return const OpenStreetMapProvider();
    }
  }

  Widget _getOnlineOfflineButton(BuildContext context, MainState state) {
    final mainBloc = context.read<MainBloc>();

    return Mutation$UpdateDriverStatus$Widget(
        options: WidgetOptions$Mutation$UpdateDriverStatus(
      onCompleted: (result, parsedData) {
        if (parsedData?.updateOneDriver == null) return;
        mainBloc.add(DriverUpdated(parsedData!.updateOneDriver));
      },
      //onError: (error) => showOperationErrorMessage(context, error),
    ), builder: (runMutation, result) {
      return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0x14000000), offset: Offset(0, 3), blurRadius: 15)
        ]),
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: (state is StatusOffline)
                ? FloatingActionButton.extended(
                    key: const Key('offline'),
                    heroTag: 'fabOffline',
                    extendedPadding: const EdgeInsets.symmetric(horizontal: 36),
                    elevation: 0,
                    backgroundColor: CustomTheme.primaryColors,
                    foregroundColor: Colors.white,
                    onPressed: (result?.isLoading ?? false)
                        ? null
                        : () async {
                            final fcmId = await getFcmId(context);
                            runMutation(Variables$Mutation$UpdateDriverStatus(
                                status: Enum$DriverStatus.Online,
                                fcmId: fcmId));
                          },
                    label: Text(S.of(context).statusOffline,
                        style: Theme.of(context).textTheme.headlineSmall),
                    icon: const Icon(Ionicons.car_sport),
                  )
                : ((state is StatusOnline)
                    ? FloatingActionButton.extended(
                        key: const Key('online'),
                        heroTag: 'fabOnline',
                        elevation: 0,
                        onPressed: (result?.isLoading ?? false)
                            ? null
                            : () {
                                runMutation(
                                    Variables$Mutation$UpdateDriverStatus(
                                        status: Enum$DriverStatus.Offline));
                              },
                        label: Text(S.of(context).statusOnline,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: const Color.fromARGB(
                                        255, 215, 88, 60))),
                        backgroundColor: CustomTheme.primaryColors.shade100,
                        foregroundColor: const Color.fromARGB(255, 215, 88, 60),
                        icon: const Icon(Ionicons.power),
                      )
                    : const SizedBox())),
      );
    });
  }

  Widget _getMenuButton() {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0x14000000), offset: Offset(3, 3), blurRadius: 25)
      ]),
      child: FloatingActionButton(
          heroTag: 'fabMenu',
          elevation: 0,
          mini: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          backgroundColor: CustomTheme.secondaryColors.shade50,
          foregroundColor: Colors.black,
          child: const Icon(Icons.menu, color: null)),
    );
  }

  Widget _getWalletButton(BuildContext context, MainState state) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0x14000000), offset: Offset(0, 3), blurRadius: 15)
      ]),
      child: FloatingActionButton.extended(
          heroTag: 'fabIncome',
          onPressed: () => Navigator.pushNamed(context, 'earnings'),
          backgroundColor: CustomTheme.primaryColors.shade50,
          foregroundColor: CustomTheme.primaryColors,
          icon: const Icon(Ionicons.wallet),
          elevation: 0,
          label: Text(
              (state.driver?.wallets.length ?? 0) > 0
                  ? NumberFormat.simpleCurrency(
                          name: state.driver!.wallets.first.currency)
                      .format(state.driver!.wallets.first.balance)
                  : "-",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: CustomTheme.primaryColors))),
    );
  }

  Future<String?> getFcmId(BuildContext context) async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      /*showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title:
                    Text(S.of(context).message_notification_permission_title),
                content: Text(S
                    .of(context)
                    .message_notification_permission_denined_message),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(S.of(context).action_ok),
                  )
                ],
              ));*/
      return null;
    } else {
      messaging.onTokenRefresh.listen((event) {
        updateNotificationId(context);
      });
      return messaging.getToken(
        vapidKey: "",
      );
    }
  }

  void updateNotificationId(BuildContext context) async {
    final httpLink = HttpLink(
      "${serverUrl}graphql",
    );
    final authLink = AuthLink(
      getToken: () async => 'Bearer ${Hive.box('user').get('jwt')}',
    );

    Link link = authLink.concat(httpLink);
    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
    final fcmId = await getFcmId(context);

    final driverId = Hive.box('user').get('driverId').toString();
    final result = await client.mutate(
      Options$Mutation$UpdateDriverFCMId(
        variables: Variables$Mutation$UpdateDriverFCMId(
          id: driverId,
          fcmId: fcmId,
        ),
      ),
    );

    print('Response data: ${result.data}');
    print('Response errors: ${result.exception}');
  }
}
