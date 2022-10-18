import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../../injection_container.dart';
import '../../logic/login_cubit/login_cubit.dart';
import '../../logic/login_cubit/login_states.dart';
import '../utils/dialogs/loading_dialog.dart';
import '../utils/dialogs/message_dialog.dart';
import '../widgets/my_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginUserLoading) {
            loadingAlertDialog(context);
          }

          if (state is LoginUserFail) {
            Navigator.pop(context);
            showMessageDialog(
                context: context, message: state.message, isSucceeded: false);
          }

          if (state is LoginUserSuccess) {
            Navigator.pop(context);
            showMessageDialog(
                context: context,
                isSucceeded: true,
                message: 'تم تسجيل الدخول بنجاح',
                onPressedOk: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, MainScreen.routeName, (route) => false);
                });
          }
        },
        builder: (context, state) {
          var _cubit = LoginCubit.get(context);
          return Container(
            color: AppColors.backgroundColor,
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        alignment: Alignment.topLeft,
                        height: 530.h,
                        width: 405.w,
                        child: Image.asset(
                          AppAssets.questionBackground,
                          fit: BoxFit.contain,
                        )),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      color: Colors.white.withOpacity(0.85),
                      alignment: Alignment.center,
                    ),
                  ),
                  Scaffold(
                    // backgroundColor: backgroundColor,
                    body: SafeArea(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    AppStrings.login.tr(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff5f5f5f),
                                      fontSize: 30.sp,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 11.w,
                                  ),
                                  Image.asset(
                                    AppAssets.wavingHand,
                                    height: 40.h,
                                    width: 40.h,
                                  )
                                ],
                              ),
                              Text(
                                "مرحباً بك فى اسـأل سيميكس",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff868686),
                                  fontSize: 20.sp,
                                ),
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    MyTextFormField(
                                      controller: _cubit.phoneNumberController,
                                      label: "phone number".tr(),
                                      errorText: _cubit.errorMessage ==
                                          'رقم الهاتف غير مسجل'?_cubit.errorMessage:null,
                                      prefixIcon: Icons.phone,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp("[0-9]")),
                                      ],
                                      validator: (String? value) {
                                        if (value!.isEmpty)
                                          return "required".tr();
                                        String pattern =
                                            r'(^01[0125][0-9]{8}$)';
                                        RegExp regex = RegExp(pattern);
                                        if (!regex.hasMatch(value)) {
                                          return 'Enter Valid Phone Number';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    MyTextFormField(
                                      controller: _cubit.passwordController,
                                      label: "password".tr(),
                                      errorText: _cubit.errorMessage ==
                                          'خطأ فى كلمة المرور'?_cubit.errorMessage:null,
                                      obscureText: !_cubit.isTextVisible,
                                      suffixOnPressed: () =>
                                          _cubit.changeTextVisibility(
                                              !_cubit.isTextVisible),
                                      suffixIcon: !_cubit.isTextVisible
                                          ? Icons.visibility_off_outlined
                                          : Icons.remove_red_eye_outlined,
                                      prefixIcon: Icons.lock_outline,
                                      validator: (String? value) {
                                        if (value!.isEmpty)
                                          return "required".tr();
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 60.h,
                                    ),
                                    SizedBox(
                                      height: 52.h,
                                      width: 334.w,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50.r)),
                                          ),
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _cubit.loginUser();
                                            }
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "login".tr(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22.sp,
                                                  fontFamily: "Cairo",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6.w,
                                              ),
                                              Image.asset(
                                                AppAssets.singInIcon,
                                                width: 25.w,
                                                height: 25.h,
                                              )
                                            ],
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 9.w),
                                              child: Divider(
                                                height: 1.h,
                                                color: Color(0xFFBEBEBE),
                                              )),
                                        ),
                                        Text(
                                          "or".tr(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff868686),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.w),
                                            child: Divider(
                                              height: 1.h,
                                              color: Color(0xFFBEBEBE),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Are you have an account ?".tr(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Navigator.pushReplacementNamed(
                                            //     context,
                                            //     RegisterScreen.routeName);
                                          },
                                          child: Text(
                                            "register now".tr(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color(0xFFFF1515),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
