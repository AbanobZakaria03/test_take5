import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_take5/data/models/requests/trip_start_request/trip_start_request.dart';

import '../../core/constants/app_constants.dart';
import '../../data/repositories/take5_repository.dart';
import 'trip_states.dart';

class TripCubit extends Cubit<TripStates> {
  static TripCubit get(context) => BlocProvider.of(context);
  final Take5Repository take5Repository;

  TripCubit({required this.take5Repository}) : super(InitialTripState());

}
