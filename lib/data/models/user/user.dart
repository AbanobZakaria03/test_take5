import 'package:freezed_annotation/freezed_annotation.dart';


part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? username,
    String? email,
    String? state,
    String? zone,
    String? address,
    String? mobileno,
    String? occupation,
    String? password,
    String? token,
  }) = _User;

  factory  User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
//flutter pub run build_runner build