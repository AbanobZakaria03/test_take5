import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_take5/data/datasources/boxes.dart';
import '../../core/utils/services/local_storage_service.dart';
import '../models/requests/destination_arrived_request/destination_arrived_request.dart';
import '../models/requests/step_one_complete_request/step_one_complete_request.dart';
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
  Future<void> cacheDestinationArrivedRequest(DestinationArrivedRequest destinationArrivedRequest);
  DestinationArrivedRequest? getCachedDestinationArrivedRequest();
  Future<void> cacheStepOneCompleteRequest(StepOneCompleteRequest stepOneCompleteRequest);
  StepOneCompleteRequest? getCachedStepOneCompleteRequest();
}

const CACHED_USER = 'CACHED_USER';

class LocalDataSourceImpl implements LocalDataSource{

  //final LocalStorageService localStorageService;
  //LocalDataSourceImpl({required this.localStorageService});
  @override
  Future<void> cacheUser(User user) async {
    final box=Boxes.getUser();
    box.put('user',user);
   // box.add(user);
   // print(box.getAt(0));
   //print('***');
  }

  @override
  User? getCachedUser()
  {
    final box=Boxes.getUser();
    print(box.get('user'));
    return box.get('user');
  }

  @override
  Future<void> cacheTakeFiveSurvey(TakeFiveSurvey takeFiveSurvey) async {
    final box=Boxes.getTakeFiveBox();
    box.put('takeFiveSurvey', takeFiveSurvey.toJson());
    print(box.get('takeFiveSurvey'));
  }
  @override
  TakeFiveSurvey? getCachedTakeFiveSurvey()
  {
    final box=Boxes.getTakeFiveBox();
    if(box.get('stepOneCompleteRequest')==null)
    {
      return null;
    }
    else {
      return TakeFiveSurvey.fromJson(
          box.get('takeFiveSurvey'));
    }
  }
  @override
  Future<void> cacheTrip(Trip trip)async
  {
    final box=Boxes.getTakeFiveBox();
    box.put('trip', trip.toJson());
    print(box.get('trip'));
  }
  @override
  Trip? getCachedTrip()
  {
    final box=Boxes.getTakeFiveBox();
    if(box.get('stepOneCompleteRequest')==null)
    {
      return null;
    }
    else {
      return Trip.fromJson(box.get('trip'));
    }
  }
  @override
  Future<void> cacheDestinationArrivedRequest(DestinationArrivedRequest destinationArrivedRequest)async
  {
    final box=Boxes.getTakeFiveBox();
    box.put('destinationArrivedRequest', destinationArrivedRequest.toJson());
    print(box.get('destinationArrivedRequest'));
  }
  @override
  DestinationArrivedRequest? getCachedDestinationArrivedRequest()
  {
    final box=Boxes.getTakeFiveBox();
    if(box.get('destinationArrivedRequest')==null)
    {
      return null;
    }
    else {
      return  DestinationArrivedRequest
          .fromJson(box.get('destinationArrivedRequest'));
    }
  }
  @override
  Future<void> cacheStepOneCompleteRequest(StepOneCompleteRequest stepOneCompleteRequest)async
  {
    final box=Boxes.getTakeFiveBox();
    box.put('stepOneCompleteRequest',  stepOneCompleteRequest.toJson());
    print(box.get('stepOneCompleteRequest'));
  }
  @override
  StepOneCompleteRequest ? getCachedStepOneCompleteRequest ()
  {
    final box=Boxes.getTakeFiveBox();
    if(box.get('stepOneCompleteRequest')==null)
      {
        return null;
      }
    else {
      return StepOneCompleteRequest
          .fromJson(box.get('stepOneCompleteRequest'));

    }
  }
}
