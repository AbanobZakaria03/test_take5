// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_one_complete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepOneCompleteRequest _$StepOneCompleteRequestFromJson(
    Map<String, dynamic> json) {
  return _StepOneCompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$StepOneCompleteRequest {
  String get userId => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  Map<String, bool> get questionAnswer => throw _privateConstructorUsedError;
  Map<String, List<int>> get tripDangerMeasureControls =>
      throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepOneCompleteRequestCopyWith<StepOneCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepOneCompleteRequestCopyWith<$Res> {
  factory $StepOneCompleteRequestCopyWith(StepOneCompleteRequest value,
          $Res Function(StepOneCompleteRequest) then) =
      _$StepOneCompleteRequestCopyWithImpl<$Res, StepOneCompleteRequest>;
  @useResult
  $Res call(
      {String userId,
      int tripId,
      Map<String, bool> questionAnswer,
      Map<String, List<int>> tripDangerMeasureControls,
      DateTime createdDate});
}

/// @nodoc
class _$StepOneCompleteRequestCopyWithImpl<$Res,
        $Val extends StepOneCompleteRequest>
    implements $StepOneCompleteRequestCopyWith<$Res> {
  _$StepOneCompleteRequestCopyWithImpl(this._value, this._then);

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
    Object? tripDangerMeasureControls = null,
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
      tripDangerMeasureControls: null == tripDangerMeasureControls
          ? _value.tripDangerMeasureControls
          : tripDangerMeasureControls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepOneCompleteRequestCopyWith<$Res>
    implements $StepOneCompleteRequestCopyWith<$Res> {
  factory _$$_StepOneCompleteRequestCopyWith(_$_StepOneCompleteRequest value,
          $Res Function(_$_StepOneCompleteRequest) then) =
      __$$_StepOneCompleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int tripId,
      Map<String, bool> questionAnswer,
      Map<String, List<int>> tripDangerMeasureControls,
      DateTime createdDate});
}

/// @nodoc
class __$$_StepOneCompleteRequestCopyWithImpl<$Res>
    extends _$StepOneCompleteRequestCopyWithImpl<$Res,
        _$_StepOneCompleteRequest>
    implements _$$_StepOneCompleteRequestCopyWith<$Res> {
  __$$_StepOneCompleteRequestCopyWithImpl(_$_StepOneCompleteRequest _value,
      $Res Function(_$_StepOneCompleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tripId = null,
    Object? questionAnswer = null,
    Object? tripDangerMeasureControls = null,
    Object? createdDate = null,
  }) {
    return _then(_$_StepOneCompleteRequest(
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
      tripDangerMeasureControls: null == tripDangerMeasureControls
          ? _value._tripDangerMeasureControls
          : tripDangerMeasureControls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepOneCompleteRequest implements _StepOneCompleteRequest {
  const _$_StepOneCompleteRequest(
      {required this.userId,
      required this.tripId,
      required final Map<String, bool> questionAnswer,
      required final Map<String, List<int>> tripDangerMeasureControls,
      required this.createdDate})
      : _questionAnswer = questionAnswer,
        _tripDangerMeasureControls = tripDangerMeasureControls;

  factory _$_StepOneCompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_StepOneCompleteRequestFromJson(json);

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

  final Map<String, List<int>> _tripDangerMeasureControls;
  @override
  Map<String, List<int>> get tripDangerMeasureControls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tripDangerMeasureControls);
  }

  @override
  final DateTime createdDate;

  @override
  String toString() {
    return 'StepOneCompleteRequest(userId: $userId, tripId: $tripId, questionAnswer: $questionAnswer, tripDangerMeasureControls: $tripDangerMeasureControls, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepOneCompleteRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            const DeepCollectionEquality()
                .equals(other._questionAnswer, _questionAnswer) &&
            const DeepCollectionEquality().equals(
                other._tripDangerMeasureControls, _tripDangerMeasureControls) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      tripId,
      const DeepCollectionEquality().hash(_questionAnswer),
      const DeepCollectionEquality().hash(_tripDangerMeasureControls),
      createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepOneCompleteRequestCopyWith<_$_StepOneCompleteRequest> get copyWith =>
      __$$_StepOneCompleteRequestCopyWithImpl<_$_StepOneCompleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepOneCompleteRequestToJson(
      this,
    );
  }
}

abstract class _StepOneCompleteRequest implements StepOneCompleteRequest {
  const factory _StepOneCompleteRequest(
      {required final String userId,
      required final int tripId,
      required final Map<String, bool> questionAnswer,
      required final Map<String, List<int>> tripDangerMeasureControls,
      required final DateTime createdDate}) = _$_StepOneCompleteRequest;

  factory _StepOneCompleteRequest.fromJson(Map<String, dynamic> json) =
      _$_StepOneCompleteRequest.fromJson;

  @override
  String get userId;
  @override
  int get tripId;
  @override
  Map<String, bool> get questionAnswer;
  @override
  Map<String, List<int>> get tripDangerMeasureControls;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_StepOneCompleteRequestCopyWith<_$_StepOneCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
