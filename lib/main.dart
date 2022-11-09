import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_take5/presentation/utils/dialogs/loading_dialog.dart';
import 'package:test_take5/presentation/utils/dialogs/message_dialog.dart';
import 'package:test_take5/presentation/utils/helpers/helpers.dart';
import 'core/bloc_observer.dart';
import 'core/config/routes/routes.dart';
import 'core/constants/app_assets.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_constants.dart';
import 'core/utils/services/background_service.dart';
import 'core/utils/services/loaction_service.dart';
import 'data/models/user/user.dart';
import 'injection_container.dart' as di;

import 'logic/internet/internet_bloc.dart';

import 'presentation/screens/home/home.dart';
import 'presentation/screens/login/login_screen.dart';
import 'presentation/screens/step_one/step_one.dart';
import 'presentation/screens/step_two/step_two.dart';
import 'presentation/screens/step_two_waiting/step_two_waiting_screen.dart';
import 'presentation/screens/trip/trip.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await di.init();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('user');
  await Hive.openBox('route');

  await Hive.openBox('takeFiveSurvey');
  await BackgroundService.initializeService();

  print(AppConstants.dar);
  final service = FlutterBackgroundService();
  var isRunning = await service.isRunning();
  if (isRunning == true) {
    service.invoke("stopService");
  }


  BlocOverrides.runZoned(
    () {
      runApp(
        EasyLocalization(
          path: AppAssets.appTranslations,
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          fallbackLocale: const Locale('en'),
          startLocale: const Locale('ar'),
          child: const MyApp(),
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();

    return ScreenUtilInit(
      designSize: const Size(375, 832),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<InternetBloc>(
              create: (context) => InternetBloc(),
            ),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            builder: (context, child) {
              return BlocListener<InternetBloc, InternetState>(
                listener: (context, state) {
                  if (state is IsConnectedState) {
                    final context = navigatorKey.currentState!.overlay!.context;
                    Navigator.pop(context);
                    if (!state.isDeviceConnected) {
                      showMessageDialog(
                          context: context,
                          isSucceeded: false,
                          message: 'تأكد من اتصالك بالانترنت');
                    } else if (!state.isNetworkAvailable) {
                      showMessageDialog(
                          context: context,
                          isSucceeded: false,
                          message: 'لا يوجد تغطية بالانترنت');
                    }
                  }
                  if (state is InternetCheckLoading) {
                    final context = navigatorKey.currentState!.overlay!.context;
                    loadingAlertDialog(context);
                  }
                  if (state is NotConnectedState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                  if (state is ConnectedState) {
                    //todo add method to push local data here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                child: child,
              );
            },
            theme: ThemeData(
                scaffoldBackgroundColor: AppColors.backgroundColor,
                primarySwatch: Colors.blue,
                iconTheme: IconThemeData(color: AppColors.mainColor)
                // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
                // useMaterial3: true,
                ),
            onGenerateRoute: AppRoutes.onGenerateRoutes,
            //initialRoute: getLastRoute(),
            initialRoute: LoginScreen.routeName,
            // initialRoute: StepTwoWaitingScreen.routeName,
            // initialRoute: StepOneScreen.routeName,
            // initialRoute: HomeScreen.routeName,
            //initialRoute: StepTwoScreen.routeName,
            // initialRoute: TripScreen.routeName,
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "Stop Service";

  Position? p;
  double? d;

  Future<void> _incrementCounter() async {
    var loc = LocationService();
    p = await loc.getCurrentLocation();
    print(p);

    Position pp =
        Position.fromMap({'latitude': 27.1790981, 'longitude': 31.0220375});
    d = loc.getDistance(p!, pp);
    print(d);
    setState(() {});
    loc.subscribeEvent((p) {
      this.p = p;
      Position pp =
          Position.fromMap({'latitude': 27.1790981, 'longitude': 31.0220375});
      d = loc.getDistance(p, pp);
      print(d);
      setState(() {});
    }, 100);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetBloc, InternetState>(
      listener: (context, state) {
        if (state is NotConnectedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
        if (state is ConnectedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  child: errmsg("No Internet Connection Available",
                      state.message == 'Not Connected'),
                  //to show internet connection message on isoffline = true.
                ),
                Spacer(),
                Text(state.message),
                Text(p.toString() ?? ''),
                Text('${d?.toInt()} m' ?? ''),
                ElevatedButton(
                    onPressed: () async {
                      final service = FlutterBackgroundService();
                      var isRunning = await service.isRunning();
                      if (isRunning) {
                        service.invoke("stopService");
                      } else {
                        service.startService();
                      }
                      if (!isRunning) {
                        text = 'Stop Service';
                      } else {
                        text = 'Start Service';
                      }
                      setState(() {});
                    },
                    child: Text(text)),
                Spacer(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

Widget errmsg(String text, bool show) {
  //error message widget.
  if (show == true) {
    //if error is true then show error message box
    return Container(
      padding: EdgeInsets.all(10.00),
      margin: EdgeInsets.only(bottom: 10.00),
      color: Colors.red,
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: 6.00),
          child: Icon(Icons.info, color: Colors.white),
        ), // icon for error message

        Text(text, style: TextStyle(color: Colors.white)),
        //show error message text
      ]),
    );
  } else {
    return Container();
    //if error is false, return empty container.
  }
}
