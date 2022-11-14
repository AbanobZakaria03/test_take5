import 'package:flutter/material.dart';

class AppColors {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `AppColors()` accidentally
  AppColors._();

  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `LocalStorageKey.saveUserId`.
  static const Color mainColor = Color(0xFF003777);
  static const Color backgroundColor = Color(0xFFFCFEFF);
  static const Color defaultColor = Color(0xFF212121);
  static const Color greyColor = Color(0xff6d6d6d);
  static const Color offWhiteGreyColor = Color(0xFFC1C1C1);
  static const Color whiteGreyColor = Color(0xFF5f5f5f);
  static const Color avatarWhiteColor = Color(0xFFF7F7F7);
  static const Color redColor = Color(0xFFE9132F);
  static const Color yellowColor = Color(0xFFFFA115);
  static const Color greenColor = Color(0xff00ed51);
}
