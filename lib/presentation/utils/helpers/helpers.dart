import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_take5/core/constants/app_constants.dart';

import '../../../core/firebase/push_notification_service.dart';
import '../../../data/datasources/boxes.dart';
import '../../screens/home/home.dart';
import '../../screens/login/login_screen.dart';

void logOut(BuildContext context) {
  //clear global cubits state
  // HomeCubit.get(context).clearData();

  //clear FCM token
  // PushNotificationService.deleteDeviceToken();

  //clear cached data
  // SharedPreferences.getInstance().then((value) => value.remove(CACHED_USER));
  Boxes.getUser().clear();
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
    // var takeFiveBox = Boxes.getTakeFiveBox();
    // AppConstants.trip = takeFiveBox.get('trip');
  }
  print(lastRoute);
  return lastRoute;
}
