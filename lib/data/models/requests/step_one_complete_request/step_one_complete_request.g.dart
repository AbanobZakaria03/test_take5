// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_one_complete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StepOneCompleteRequest _$$_StepOneCompleteRequestFromJson(
        Map<String, dynamic> json) =>
    _$_StepOneCompleteRequest(
      userId: json['userId'] as String,
      tripId: json['tripId'] as int,
      questionAnswer: Map<String, bool>.from(json['questionAnswer'] as Map),
      tripDangerMeasureControls:
          (json['tripDangerMeasureControls'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as int).toList()),
      ),
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_StepOneCompleteRequestToJson(
        _$_StepOneCompleteRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tripId': instance.tripId,
      'questionAnswer': instance.questionAnswer,
      'tripDangerMeasureControls': instance.tripDangerMeasureControls,
      'createdDate': instance.createdDate.toIso8601String(),
    };
