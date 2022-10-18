import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/firebase/push_notification_service.dart';
import '../../../data/datasources/local_data_source.dart';
import '../../login/login_screen.dart';

void logOut(BuildContext context) {
  //clear global cubits state
 // HomeCubit.get(context).clearData();

  //clear FCM token
  PushNotificationService.deleteDeviceToken();

  //clear cached data
  // SharedPreferences.getInstance().then((value) => value.remove(CACHED_USER));

  //Navigate to login screen
  Navigator.of(context).pushNamedAndRemoveUntil(
      LoginScreen.routeName, (Route<dynamic> route) => false);
}