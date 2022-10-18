// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_pending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripPendingResponse _$$_TripPendingResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TripPendingResponse(
      message: json['message'] as String,
      data: Trip.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TripPendingResponseToJson(
        _$_TripPendingResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
