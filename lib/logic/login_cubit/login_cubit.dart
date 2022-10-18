import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/app_constants.dart';
import '../../data/repositories/user_repository.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  static LoginCubit get(context) => BlocProvider.of(context);
  final UserRepository userRepository;

  LoginCubit({required this.userRepository}) : super(InitialLoginState());

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isTextVisible = false;


// hide or visible password text
  void changeTextVisibility(bool value) {
    isTextVisible = value;
    emit(ChangePasswordVisibilityState());
  }

  String errorMessage='';
  Future<void>loginUser()async{
    emit(LoginUserLoading());
    final result = await userRepository.loginUser(
      mobileNo: phoneNumberController.text,
      password: passwordController.text
    );
    result.fold((failure) {
     // flag=false;
      errorMessage=failure.message;
      print(errorMessage);
      emit(LoginUserFail(failure.message));
    }, (userResponse) {
      //AppConstants.userResponse=userResponse;
     // flag=true;
      emit(LoginUserSuccess());
    });
  }
}
