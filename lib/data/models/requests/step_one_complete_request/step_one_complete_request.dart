import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_one_complete_request.freezed.dart';
part 'step_one_complete_request.g.dart';


@freezed
class StepOneCompleteRequest with _$StepOneCompleteRequest {
  const factory StepOneCompleteRequest({
   required String userId,
   required int tripId,
   required Map<String, bool> questionAnswer,
   required Map<String, List<int>> tripDangerMeasureControls,
   required DateTime createdDate,
  }) = _StepOneCompleteRequest;

  factory StepOneCompleteRequest.fromJson(Map<String, dynamic> json) => _$StepOneCompleteRequestFromJson(json);
}
