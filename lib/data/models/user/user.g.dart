// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      state: json['state'] as String?,
      zone: json['zone'] as String?,
      address: json['address'] as String?,
      mobileno: json['mobileno'] as String?,
      occupation: json['occupation'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'state': instance.state,
      'zone': instance.zone,
      'address': instance.address,
      'mobileno': instance.mobileno,
      'occupation': instance.occupation,
      'password': instance.password,
      'token': instance.token,
    };
