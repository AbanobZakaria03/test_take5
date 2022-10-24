import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_take5/data/models/requests/trip_start_request/trip_start_request.dart';

import '../../core/constants/app_constants.dart';
import '../../data/models/trip/trip.dart';
import '../../data/repositories/take5_repository.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  static HomeCubit get(context) => BlocProvider.of(context);
  final Take5Repository take5Repository;

  HomeCubit({required this.take5Repository}) : super(InitialHomeState());

  late Trip trip;
  Future<void> getPendingTrip() async {
    emit(HomeGetPendingTripLoading());
    final result =
        await take5Repository.getPendingTrip(userId: '1' //todo change this
            );
    result.fold((failure) {
      emit(HomeGetPendingTripFail(failure.message));
    }, (tripPendingResponse) {
      trip=tripPendingResponse.data;
      emit(HomeGetPendingTripSuccess());
    });
  }


  Future<void> startTrip() async {
    emit(HomeStartTripLoading());
    final result = await take5Repository.startTrip(
        //todo change this
        tripStartRequest: TripStartRequest(
            userId: '1',
            tripId: 1,
            jobsiteId: 1,
            startingDate: DateTime.now()));
    result.fold((failure) {
      emit(HomeStartTripFail(failure.message));
    }, (startTripResponse) {
      emit(HomeStartTripSuccess());
    });
  }
}
