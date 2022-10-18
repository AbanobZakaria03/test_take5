import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/user.dart';




part 'user_response.freezed.dart';//same name of file
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse{
  const factory UserResponse({
    bool? flag,
    String? message,
    User? data,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
