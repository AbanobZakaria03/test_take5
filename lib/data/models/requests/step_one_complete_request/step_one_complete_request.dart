import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_take5/data/models/answer/answer.dart';

import '../../responses/trip_start_response/trip_start_response.dart';

part 'step_one_complete_request.freezed.dart';
part 'step_one_complete_request.g.dart';


@freezed
class StepOneCompleteRequest with _$StepOneCompleteRequest {
  const factory StepOneCompleteRequest({
   required String userId,
   required int tripId,
   required List<Answer> answers,
   required List<DangerModel> dangers,
   required DateTime createdDate,
  }) = _StepOneCompleteRequest;

  factory StepOneCompleteRequest.fromJson(Map<String, dynamic> json) => _$StepOneCompleteRequestFromJson(json);
}
