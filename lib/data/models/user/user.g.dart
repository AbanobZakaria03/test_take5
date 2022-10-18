// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      driverId: json['driverId'] as int,
      driverName: json['driverName'] as String,
      userUnSeenNotificationCount: json['userUnSeenNotificationCount'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'driverId': instance.driverId,
      'driverName': instance.driverName,
      'userUnSeenNotificationCount': instance.userUnSeenNotificationCount,
    };
