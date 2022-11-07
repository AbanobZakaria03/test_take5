// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BigModel _$$_BigModelFromJson(Map json) => _$_BigModel(
      userId: json['userId'] as String,
      tripId: json['tripId'] as int,
      jobsiteId: json['jobsiteId'] as int,
      tripStartRequest: TripStartRequest.fromJson(
          Map<String, dynamic>.from(json['tripStartRequest'] as Map)),
      destinationArrivedRequest: DestinationArrivedRequest.fromJson(
          Map<String, dynamic>.from(json['destinationArrivedRequest'] as Map)),
      stepOneCompleteRequest: StepOneCompleteRequest.fromJson(
          Map<String, dynamic>.from(json['stepOneCompleteRequest'] as Map)),
      stepTwoStartRequest: StepTwoStartRequest.fromJson(
          Map<String, dynamic>.from(json['stepTwoStartRequest'] as Map)),
      stepTwoCompleteRequest: StepTwoCompleteRequest.fromJson(
          Map<String, dynamic>.from(json['stepTwoCompleteRequest'] as Map)),
      CurrentStatus: json['CurrentStatus'] as String,
      startingDate: DateTime.parse(json['startingDate'] as String),
    );

Map<String, dynamic> _$$_BigModelToJson(_$_BigModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tripId': instance.tripId,
      'jobsiteId': instance.jobsiteId,
      'tripStartRequest': instance.tripStartRequest.toJson(),
      'destinationArrivedRequest': instance.destinationArrivedRequest.toJson(),
      'stepOneCompleteRequest': instance.stepOneCompleteRequest.toJson(),
      'stepTwoStartRequest': instance.stepTwoStartRequest.toJson(),
      'stepTwoCompleteRequest': instance.stepTwoCompleteRequest.toJson(),
      'CurrentStatus': instance.CurrentStatus,
      'startingDate': instance.startingDate.toIso8601String(),
    };
