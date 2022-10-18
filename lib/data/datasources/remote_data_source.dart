import 'dart:convert';

import 'package:flutter/services.dart';

import '../../core/constants/app_endpoints.dart';
import '../../core/utils/services/dio_client.dart';
import '../models/responses/user_login_response/user_login_response.dart';

abstract class RemoteDataSource {
  Future<UserLoginResponse> loginUser(
      {required String mobileNo, required String password});
}

// class RemoteDataSourceImpl extends RemoteDataSource {
//   final DioClient client;
//   RemoteDataSourceImpl({required this.client});
//
//   @override
//   Future<UserLoginResponse> loginUser(
//       {required String mobileNo, required String password}) async {
//     final response = await client.request(
//         url: AppEndpoints.userLogin,
//         method: HttpMethod.POST,
//         data: {'mobileNo': mobileNo, 'password': password});
//     print(response.data);
//     return UserLoginResponse.fromJson(response.data);
//   }
// }

class FakeRemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<UserLoginResponse> loginUser({
    required String mobileNo,
    required String password,
  }) async {

    String response =
        await rootBundle.loadString('assets/endpoints/login_response.json');

    return UserLoginResponse.fromJson(jsonDecode(response));
  }
}
