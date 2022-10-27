import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_take5/data/models/answer/answer.dart';

import '../../../../presentation/widgets/danger.dart';

part 'step_one_complete_request.freezed.dart';
part 'step_one_complete_request.g.dart';


@freezed
class StepOneCompleteRequest with _$StepOneCompleteRequest {
  const factory StepOneCompleteRequest({
   required String userId,
   required int tripId,
   required List<Answer> questionAnswer,
   required List<Danger> tripDangerMeasureControls,
   required DateTime createdDate,
  }) = _StepOneCompleteRequest;

  factory StepOneCompleteRequest.fromJson(Map<String, dynamic> json) => _$StepOneCompleteRequestFromJson(json);
}
