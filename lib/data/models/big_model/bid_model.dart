import 'package:freezed_annotation/freezed_annotation.dart';

import '../requests/destination_arrived_request/destination_arrived_request.dart';
import '../requests/step_one_complete_request/step_one_complete_request.dart';
import '../requests/step_two_complete_request/step_two_complete_request.dart';
import '../requests/step_two_start_request/step_two_start_request.dart';
import '../requests/trip_start_request/trip_start_request.dart';


part 'bid_model.freezed.dart';//same name of file
part 'bid_model.g.dart';

@freezed
class BigModel with _$BigModel{
  const factory BigModel({
    required String userId,
    required int tripId,
    required int jobsiteId,
    required TripStartRequest tripStartRequest,
    required DestinationArrivedRequest destinationArrivedRequest,
    required StepOneCompleteRequest stepOneCompleteRequest,
    required StepTwoStartRequest stepTwoStartRequest,
    required StepTwoCompleteRequest stepTwoCompleteRequest,
    required String CurrentStatus,
    required DateTime startingDate,
  }) = _BigModel;

  factory BigModel.fromJson(Map<String, dynamic> json) => _$BigModelFromJson(json);
}
