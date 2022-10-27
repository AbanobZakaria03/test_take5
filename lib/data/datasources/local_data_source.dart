import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_take5/data/datasources/boxes.dart';
import '../../core/utils/services/local_storage_service.dart';
import '../models/requests/destination_arrived_request/destination_arrived_request.dart';
import '../models/requests/step_one_complete_request/step_one_complete_request.dart';
import '../models/requests/step_two_complete_request/step_two_complete_request.dart';
import '../models/requests/step_two_start_request/step_two_start_request.dart';
import '../models/requests/trip_start_request/trip_start_request.dart';
import '../models/responses/trip_start_response/trip_start_response.dart';
import '../models/responses/user_login_response/user_login_response.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../models/trip/trip.dart';
import '../models/user/user.dart';

abstract class LocalDataSource {
  // responses
  Future<void> cacheUser(User user);

  User? getCachedUser();

  Future<void> cacheTakeFiveSurvey(TakeFiveSurvey takeFiveSurvey);

  TakeFiveSurvey? getCachedTakeFiveSurvey();

  Future<void> cacheTrip(Trip trip);

  Trip? getCachedTrip();

// requests
  Future<void> cacheDestinationArrivedRequest(
      DestinationArrivedRequest destinationArrivedRequest);

  DestinationArrivedRequest? getCachedDestinationArrivedRequest();

  Future<void> cacheStepOneCompleteRequest(
      StepOneCompleteRequest stepOneCompleteRequest);

  StepOneCompleteRequest? getCachedStepOneCompleteRequest();

  Future<void> cacheStepTwoCompleteRequest(
      StepTwoCompleteRequest stepTwoCompleteRequest);

  StepTwoCompleteRequest? getCachedStepTwoCompleteRequest();

  Future<void> cacheStepTwoStartRequest(
      StepTwoStartRequest stepTwoStartRequest);

  StepTwoStartRequest? getCachedStepTwoStartRequest();

  Future<void> cacheTripStartRequest(TripStartRequest tripStartRequest);

  TripStartRequest? getCachedTripStartRequest();
}

const CACHED_USER = 'CACHED_USER';

class LocalDataSourceImpl implements LocalDataSource {
  //final LocalStorageService localStorageService;
  //LocalDataSourceImpl({required this.localStorageService});
  @override
  Future<void> cacheUser(User user) async {
    final box = Boxes.getUser();
    box.put('user', user);
    // box.add(user);
    // print(box.getAt(0));
    //print('***');
  }

  @override
  User? getCachedUser() {
    final box = Boxes.getUser();
    print(box.get('user'));
    return box.get('user');
  }

  @override
  Future<void> cacheTakeFiveSurvey(TakeFiveSurvey takeFiveSurvey) async {
    final box = Boxes.getTakeFiveBox();
    box.put('takeFiveSurvey', takeFiveSurvey.toJson());
    print(TakeFiveSurvey.fromJson(box.get('takeFiveSurvey')));
  }

  @override
  TakeFiveSurvey? getCachedTakeFiveSurvey() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('takeFiveSurvey') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
          Map<String, dynamic>.from(box.get('takeFiveSurvey'));
      return TakeFiveSurvey.fromJson(json);
    }
  }

  @override
  Future<void> cacheTrip(Trip trip) async {
    final box = Boxes.getTakeFiveBox();
    box.put('trip', trip.toJson());
    print(box.get('trip'));
  }

  @override
  Trip? getCachedTrip() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('stepOneCompleteRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('trip'));
      return Trip.fromJson(json);
    }
  }

  @override
  Future<void> cacheDestinationArrivedRequest(
      DestinationArrivedRequest destinationArrivedRequest) async {
    final box = Boxes.getTakeFiveBox();
    box.put('destinationArrivedRequest', destinationArrivedRequest.toJson());
    print(box.get('destinationArrivedRequest'));
  }

  @override
  DestinationArrivedRequest? getCachedDestinationArrivedRequest() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('destinationArrivedRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('destinationArrivedRequest'));
      return DestinationArrivedRequest.fromJson(json);
    }
  }

  @override
  Future<void> cacheStepOneCompleteRequest(
      StepOneCompleteRequest stepOneCompleteRequest) async {
    final box = Boxes.getTakeFiveBox();
    box.put('stepOneCompleteRequest', stepOneCompleteRequest.toJson());
    print(box.get('stepOneCompleteRequest'));
  }

  @override
  StepOneCompleteRequest? getCachedStepOneCompleteRequest() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('stepOneCompleteRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('stepOneCompleteRequest'));
      return StepOneCompleteRequest.fromJson(json);
    }
  }

  @override
  Future<void> cacheStepTwoCompleteRequest(
      StepTwoCompleteRequest stepTwoCompleteRequest) async {
    final box = Boxes.getTakeFiveBox();
    box.put('stepTwoCompleteRequest', stepTwoCompleteRequest.toJson());
    print(box.get('stepTwoCompleteRequest'));
  }

  @override
  StepTwoCompleteRequest? getCachedStepTwoCompleteRequest() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('stepTwoCompleteRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('stepTwoCompleteRequest'));
      return StepTwoCompleteRequest.fromJson(json);
    }
  }

  @override
  Future<void> cacheStepTwoStartRequest(
      StepTwoStartRequest stepTwoStartRequest) async {
    final box = Boxes.getTakeFiveBox();
    box.put('stepTwoStartRequest', stepTwoStartRequest.toJson());
    print(box.get('stepTwoStartRequest'));
  }

  @override
  StepTwoStartRequest? getCachedStepTwoStartRequest() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('stepTwoStartRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('stepTwoCompleteRequest'));
      return StepTwoStartRequest.fromJson(json);
    }
  }

  @override
  Future<void> cacheTripStartRequest(TripStartRequest tripStartRequest) async {
    final box = Boxes.getTakeFiveBox();
    box.put('tripStartRequest', tripStartRequest.toJson());
    print(box.get('tripStartRequest'));
  }

  @override
  TripStartRequest? getCachedTripStartRequest() {
    final box = Boxes.getTakeFiveBox();
    if (box.get('tripStartRequest') == null) {
      return null;
    } else {
      Map<String, dynamic> json =
      Map<String, dynamic>.from(box.get('tripStartRequest'));
      return TripStartRequest.fromJson(json);
    }
  }
}
