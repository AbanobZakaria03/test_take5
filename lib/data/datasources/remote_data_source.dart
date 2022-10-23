import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_take5/data/models/requests/destination_arrived_request/destination_arrived_request.dart';
import 'package:test_take5/data/models/requests/step_one_complete_request/step_one_complete_request.dart';
import 'package:test_take5/data/models/requests/step_two_start_request/step_two_start_request.dart';
import 'package:test_take5/data/models/requests/trip_start_request/trip_start_request.dart';
import 'package:test_take5/data/models/responses/trip_pending_response/trip_pending_response.dart';
import 'package:test_take5/data/models/responses/trip_start_response/trip_start_response.dart';

import '../../core/constants/app_endpoints.dart';
import '../../core/utils/services/dio_client.dart';
import '../models/responses/user_login_response/user_login_response.dart';

abstract class RemoteDataSource {
  Future<UserLoginResponse> loginUser(
      {required String mobileNo, required String password});

  Future<TripPendingResponse> getPendingTrip(
      {required String userId});

  Future<TripStartResponse> startTrip(
      {required TripStartRequest tripStartRequest});

    Future<void> arrivedToDestination(
      {required DestinationArrivedRequest destinationArrivedRequest});

  Future<void> completeStepOne(
      {required StepOneCompleteRequest stepOneCompleteRequest});

  Future<void> startStepTwo(
      {required StepTwoStartRequest stepTwoStartRequest});

  Future<void> completeStepTwo(
      {required StepOneCompleteRequest stepOneCompleteRequest});

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

  @override
  Future<void> arrivedToDestination({required DestinationArrivedRequest destinationArrivedRequest})async {
    // TODO: implement arriveToDestination
    //throw UnimplementedError();
    return ;
  }

  @override
  Future<void> completeStepOne({required StepOneCompleteRequest stepOneCompleteRequest})async {
    // TODO: implement completeStepOne
    //throw UnimplementedError();
    return ;
  }

  @override
  Future<void> completeStepTwo({required StepOneCompleteRequest stepOneCompleteRequest}) async{
    // TODO: implement completeStepTwo
    //throw UnimplementedError();
    return ;
  }

  @override
  Future<TripPendingResponse> getPendingTrip({required String userId}) async{
    // TODO: implement getPendingTrip
   // throw UnimplementedError();
    String response =
        await rootBundle.loadString('assets/endpoints/trip_response.json');
    return TripPendingResponse.fromJson(jsonDecode(response));
  }

  @override
  Future<void> startStepTwo({required StepTwoStartRequest stepTwoStartRequest}) async{
    // TODO: implement startStepTwo
    //throw UnimplementedError();
    return ;
  }

  @override
  Future<TripStartResponse> startTrip({required TripStartRequest tripStartRequest})async {
    // TODO: implement startTrip
    //throw UnimplementedError();
    String response =
        await rootBundle.loadString('assets/endpoints/trip_start_response.json');
    return TripStartResponse.fromJson(jsonDecode(response));
  }
}
