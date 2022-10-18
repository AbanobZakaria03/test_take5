// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_complete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StepTwoCompleteRequest _$$_StepTwoCompleteRequestFromJson(
        Map<String, dynamic> json) =>
    _$_StepTwoCompleteRequest(
      userId: json['userId'] as String,
      tripId: json['tripId'] as int,
      questionAnswer: Map<String, bool>.from(json['questionAnswer'] as Map),
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_StepTwoCompleteRequestToJson(
        _$_StepTwoCompleteRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tripId': instance.tripId,
      'questionAnswer': instance.questionAnswer,
      'createdDate': instance.createdDate.toIso8601String(),
    };
