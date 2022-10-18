// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_two_complete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepTwoCompleteRequest _$StepTwoCompleteRequestFromJson(
    Map<String, dynamic> json) {
  return _StepTwoCompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$StepTwoCompleteRequest {
  String get userId => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  Map<String, bool> get questionAnswer => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepTwoCompleteRequestCopyWith<StepTwoCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepTwoCompleteRequestCopyWith<$Res> {
  factory $StepTwoCompleteRequestCopyWith(StepTwoCompleteRequest value,
          $Res Function(StepTwoCompleteRequest) then) =
      _$StepTwoCompleteRequestCopyWithImpl<$Res, StepTwoCompleteRequest>;
  @useResult
  $Res call(
      {String userId,
      int tripId,
      Map<String, bool> questionAnswer,
      DateTime createdDate});
}

/// @nodoc
class _$StepTwoCompleteRequestCopyWithImpl<$Res,
        $Val extends StepTwoCompleteRequest>
    implements $StepTwoCompleteRequestCopyWith<$Res> {
  _$StepTwoCompleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tripId = null,
    Object? questionAnswer = null,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      questionAnswer: null == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepTwoCompleteRequestCopyWith<$Res>
    implements $StepTwoCompleteRequestCopyWith<$Res> {
  factory _$$_StepTwoCompleteRequestCopyWith(_$_StepTwoCompleteRequest value,
          $Res Function(_$_StepTwoCompleteRequest) then) =
      __$$_StepTwoCompleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int tripId,
      Map<String, bool> questionAnswer,
      DateTime createdDate});
}

/// @nodoc
class __$$_StepTwoCompleteRequestCopyWithImpl<$Res>
    extends _$StepTwoCompleteRequestCopyWithImpl<$Res,
        _$_StepTwoCompleteRequest>
    implements _$$_StepTwoCompleteRequestCopyWith<$Res> {
  __$$_StepTwoCompleteRequestCopyWithImpl(_$_StepTwoCompleteRequest _value,
      $Res Function(_$_StepTwoCompleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tripId = null,
    Object? questionAnswer = null,
    Object? createdDate = null,
  }) {
    return _then(_$_StepTwoCompleteRequest(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      questionAnswer: null == questionAnswer
          ? _value._questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepTwoCompleteRequest implements _StepTwoCompleteRequest {
  const _$_StepTwoCompleteRequest(
      {required this.userId,
      required this.tripId,
      required final Map<String, bool> questionAnswer,
      required this.createdDate})
      : _questionAnswer = questionAnswer;

  factory _$_StepTwoCompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_StepTwoCompleteRequestFromJson(json);

  @override
  final String userId;
  @override
  final int tripId;
  final Map<String, bool> _questionAnswer;
  @override
  Map<String, bool> get questionAnswer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_questionAnswer);
  }

  @override
  final DateTime createdDate;

  @override
  String toString() {
    return 'StepTwoCompleteRequest(userId: $userId, tripId: $tripId, questionAnswer: $questionAnswer, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepTwoCompleteRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            const DeepCollectionEquality()
                .equals(other._questionAnswer, _questionAnswer) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, tripId,
      const DeepCollectionEquality().hash(_questionAnswer), createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepTwoCompleteRequestCopyWith<_$_StepTwoCompleteRequest> get copyWith =>
      __$$_StepTwoCompleteRequestCopyWithImpl<_$_StepTwoCompleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepTwoCompleteRequestToJson(
      this,
    );
  }
}

abstract class _StepTwoCompleteRequest implements StepTwoCompleteRequest {
  const factory _StepTwoCompleteRequest(
      {required final String userId,
      required final int tripId,
      required final Map<String, bool> questionAnswer,
      required final DateTime createdDate}) = _$_StepTwoCompleteRequest;

  factory _StepTwoCompleteRequest.fromJson(Map<String, dynamic> json) =
      _$_StepTwoCompleteRequest.fromJson;

  @override
  String get userId;
  @override
  int get tripId;
  @override
  Map<String, bool> get questionAnswer;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_StepTwoCompleteRequestCopyWith<_$_StepTwoCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
