import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_take5/core/constants/app_constants.dart';
import 'package:test_take5/data/repositories/take5_repository.dart';

import '../../../core/firebase/push_notification_service.dart';
import '../../../data/datasources/boxes.dart';
import '../../../data/datasources/local_data_source.dart';
import '../../../data/models/trip/trip.dart';
import '../../../injection_container.dart';
import '../../screens/home/home.dart';
import '../../screens/login/login_screen.dart';

void logOut(BuildContext context) {
  //clear global cubits state
  // HomeCubit.get(context).clearData();

  //clear FCM token
  // PushNotificationService.deleteDeviceToken();

  //clear cached data
  // SharedPreferences.getInstance().then((value) => value.remove(CACHED_USER));
  sl<Take5Repository>().sendCollection().fold((l) => print(l.message), (r) {
    sl<Take5Repository>().clearUser().fold((l) => print(l.message), (r) => print("success logout"));
  });

  //Navigate to login screen
  Navigator.of(context).pushNamedAndRemoveUntil(
      LoginScreen.routeName, (Route<dynamic> route) => false);
}

Future<void> saveLastRoute(String route) async {
  var box = Boxes.getRouteBox();
  box.put('LAST_ROUTE', route);
}

String getLastRoute() {
  var userBox = Boxes.getUser();
  var user = userBox.get('user');
  if (user == null) {
    return LoginScreen.routeName;
  }
  AppConstants.user = user;
  var routeBox = Boxes.getRouteBox();
  String? lastRoute = routeBox.get('LAST_ROUTE');
  if (lastRoute == null) {
    return LoginScreen.routeName;
  } else if(
  lastRoute != HomeScreen.routeName
  ){
     var takeFiveBox = Boxes.getTakeFiveBox();
     AppConstants.trip=Trip.fromJson(Map<String, dynamic>.from(takeFiveBox.get('trip')));
     print(AppConstants.trip);
  }
  print(lastRoute);
  return lastRoute;
}

// Future<bool> checkDeviceConnectivity() async {
//   var connectivityResult = await Connectivity().checkConnectivity();
//   if (connectivityResult == ConnectivityResult.mobile ||
//       connectivityResult == ConnectivityResult.wifi) {
//     return true;
//   } else {
//     return false;
//   }
// }
// checkNetworkAvailability(){
//
// }