// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BigModel _$BigModelFromJson(Map<String, dynamic> json) {
  return _BigModel.fromJson(json);
}

/// @nodoc
mixin _$BigModel {
  String get userId => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  int get jobsiteId => throw _privateConstructorUsedError;
  TripStartRequest get tripStartRequest => throw _privateConstructorUsedError;
  DestinationArrivedRequest get destinationArrivedRequest =>
      throw _privateConstructorUsedError;
  StepOneCompleteRequest get stepOneCompleteRequest =>
      throw _privateConstructorUsedError;
  StepTwoStartRequest get stepTwoStartRequest =>
      throw _privateConstructorUsedError;
  StepTwoCompleteRequest get stepTwoCompleteRequest =>
      throw _privateConstructorUsedError;
  String get CurrentStatus => throw _privateConstructorUsedError;
  DateTime get startingDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BigModelCopyWith<BigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BigModelCopyWith<$Res> {
  factory $BigModelCopyWith(BigModel value, $Res Function(BigModel) then) =
      _$BigModelCopyWithImpl<$Res, BigModel>;
  @useResult
  $Res call(
      {String userId,
      int tripId,
      int jobsiteId,
      TripStartRequest tripStartRequest,
      DestinationArrivedRequest destinationArrivedRequest,
      StepOneCompleteRequest stepOneCompleteRequest,
      StepTwoStartRequest stepTwoStartRequest,
      StepTwoCompleteRequest stepTwoCompleteRequest,
      String CurrentStatus,
      DateTime startingDate});

  $TripStartRequestCopyWith<$Res> get tripStartRequest;
  $DestinationArrivedRequestCopyWith<$Res> get destinationArrivedRequest;
  $StepOneCompleteRequestCopyWith<$Res> get stepOneCompleteRequest;
  $StepTwoStartRequestCopyWith<$Res> get stepTwoStartRequest;
  $StepTwoCompleteRequestCopyWith<$Res> get stepTwoCompleteRequest;
}

/// @nodoc
class _$BigModelCopyWithImpl<$Res, $Val extends BigModel>
    implements $BigModelCopyWith<$Res> {
  _$BigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tripId = null,
    Object? jobsiteId = null,
    Object? tripStartRequest = null,
    Object? destinationArrivedRequest = null,
    Object? stepOneCompleteRequest = null,
    Object? stepTwoStartRequest = null,
    Object? stepTwoCompleteRequest = null,
    Object? CurrentStatus = null,
    Object? startingDate = null,
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
      jobsiteId: null == jobsiteId
          ? _value.jobsiteId
          : jobsiteId // ignore: cast_nullable_to_non_nullable
              as int,
      tripStartRequest: null == tripStartRequest
          ? _value.tripStartRequest
          : tripStartRequest // ignore: cast_nullable_to_non_nullable
              as TripStartRequest,
      destinationArrivedRequest: null == destinationArrivedRequest
          ? _value.destinationArrivedRequest
          : destinationArrivedRequest // ignore: cast_nullable_to_non_nullable
              as DestinationArrivedRequest,
      stepOneCompleteRequest: null == stepOneCompleteRequest
          ? _value.stepOneCompleteRequest
          : stepOneCompleteRequest // ignore: cast_nullable_to_non_nullable
              as StepOneCompleteRequest,
      stepTwoStartRequest: null == stepTwoStartRequest
          ? _value.stepTwoStartRequest
          : stepTwoStartRequest // ignore: cast_nullable_to_non_nullable
              as StepTwoStartRequest,
      stepTwoCompleteRequest: null == stepTwoCompleteRequest
          ? _value.stepTwoCompleteRequest
          : stepTwoCompleteRequest // ignore: cast_nullable_to_non_nullable
              as StepTwoCompleteRequest,
      CurrentStatus: null == CurrentStatus
          ? _value.CurrentStatus
          : CurrentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripStartRequestCopyWith<$Res> get tripStartRequest {
    return $TripStartRequestCopyWith<$Res>(_value.tripStartRequest, (value) {
      return _then(_value.copyWith(tripStartRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinationArrivedRequestCopyWith<$Res> get destinationArrivedRequest {
    return $DestinationArrivedRequestCopyWith<$Res>(
        _value.destinationArrivedRequest, (value) {
      return _then(_value.copyWith(destinationArrivedRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepOneCompleteRequestCopyWith<$Res> get stepOneCompleteRequest {
    return $StepOneCompleteRequestCopyWith<$Res>(_value.stepOneCompleteRequest,
        (value) {
      return _then(_value.copyWith(stepOneCompleteRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepTwoStartRequestCopyWith<$Res> get stepTwoStartRequest {
    return $StepTwoStartRequestCopyWith<$Res>(_value.stepTwoStartRequest,
        (value) {
      return _then(_value.copyWith(stepTwoStartRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepTwoCompleteRequestCopyWith<$Res> get stepTwoCompleteRequest {
    return $StepTwoCompleteRequestCopyWith<$Res>(_value.stepTwoCompleteRequest,
        (value) {
      return _then(_value.copyWith(stepTwoCompleteRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BigModelCopyWith<$Res> implements $BigModelCopyWith<$Res> {
  factory _$$_BigModelCopyWith(
          _$_BigModel value, $Res Function(_$_BigModel) then) =
      __$$_BigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int tripId,
      int jobsiteId,
      TripStartRequest tripStartRequest,
      DestinationArrivedRequest destinationArrivedRequest,
      StepOneCompleteRequest stepOneCompleteRequest,
      StepTwoStartRequest stepTwoStartRequest,
      StepTwoCompleteRequest stepTwoCompleteRequest,
      String CurrentStatus,
      DateTime startingDate});

  @override
  $TripStartRequestCopyWith<$Res> get tripStartRequest;
  @override
  $DestinationArrivedRequestCopyWith<$Res> get destinationArrivedRequest;
  @override
  $StepOneCompleteRequestCopyWith<$Res> get stepOneCompleteRequest;
  @override
  $StepTwoStartRequestCopyWith<$Res> get stepTwoStartRequest;
  @override
  $StepTwoCompleteRequestCopyWith<$Res> get stepTwoCompleteRequest;
}

/// @nodoc
class __$$_BigModelCopyWithImpl<$Res>
    extends _$BigModelCopyWithImpl<$Res, _$_BigModel>
    implements _$$_BigModelCopyWith<$Res> {
  __$$_BigModelCopyWithImpl(
      _$_BigModel _value, $Res Function(_$_BigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? tripId = null,
    Object? jobsiteId = null,
    Object? tripStartRequest = null,
    Object? destinationArrivedRequest = null,
    Object? stepOneCompleteRequest = null,
    Object? stepTwoStartRequest = null,
    Object? stepTwoCompleteRequest = null,
    Object? CurrentStatus = null,
    Object? startingDate = null,
  }) {
    return _then(_$_BigModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      jobsiteId: null == jobsiteId
          ? _value.jobsiteId
          : jobsiteId // ignore: cast_nullable_to_non_nullable
              as int,
      tripStartRequest: null == tripStartRequest
          ? _value.tripStartRequest
          : tripStartRequest // ignore: cast_nullable_to_non_nullable
              as TripStartRequest,
      destinationArrivedRequest: null == destinationArrivedRequest
          ? _value.destinationArrivedRequest
          : destinationArrivedRequest // ignore: cast_nullable_to_non_nullable
              as DestinationArrivedRequest,
      stepOneCompleteRequest: null == stepOneCompleteRequest
          ? _value.stepOneCompleteRequest
          : stepOneCompleteRequest // ignore: cast_nullable_to_non_nullable
              as StepOneCompleteRequest,
      stepTwoStartRequest: null == stepTwoStartRequest
          ? _value.stepTwoStartRequest
          : stepTwoStartRequest // ignore: cast_nullable_to_non_nullable
              as StepTwoStartRequest,
      stepTwoCompleteRequest: null == stepTwoCompleteRequest
          ? _value.stepTwoCompleteRequest
          : stepTwoCompleteRequest // ignore: cast_nullable_to_non_nullable
              as StepTwoCompleteRequest,
      CurrentStatus: null == CurrentStatus
          ? _value.CurrentStatus
          : CurrentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BigModel implements _BigModel {
  const _$_BigModel(
      {required this.userId,
      required this.tripId,
      required this.jobsiteId,
      required this.tripStartRequest,
      required this.destinationArrivedRequest,
      required this.stepOneCompleteRequest,
      required this.stepTwoStartRequest,
      required this.stepTwoCompleteRequest,
      required this.CurrentStatus,
      required this.startingDate});

  factory _$_BigModel.fromJson(Map<String, dynamic> json) =>
      _$$_BigModelFromJson(json);

  @override
  final String userId;
  @override
  final int tripId;
  @override
  final int jobsiteId;
  @override
  final TripStartRequest tripStartRequest;
  @override
  final DestinationArrivedRequest destinationArrivedRequest;
  @override
  final StepOneCompleteRequest stepOneCompleteRequest;
  @override
  final StepTwoStartRequest stepTwoStartRequest;
  @override
  final StepTwoCompleteRequest stepTwoCompleteRequest;
  @override
  final String CurrentStatus;
  @override
  final DateTime startingDate;

  @override
  String toString() {
    return 'BigModel(userId: $userId, tripId: $tripId, jobsiteId: $jobsiteId, tripStartRequest: $tripStartRequest, destinationArrivedRequest: $destinationArrivedRequest, stepOneCompleteRequest: $stepOneCompleteRequest, stepTwoStartRequest: $stepTwoStartRequest, stepTwoCompleteRequest: $stepTwoCompleteRequest, CurrentStatus: $CurrentStatus, startingDate: $startingDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BigModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.jobsiteId, jobsiteId) ||
                other.jobsiteId == jobsiteId) &&
            (identical(other.tripStartRequest, tripStartRequest) ||
                other.tripStartRequest == tripStartRequest) &&
            (identical(other.destinationArrivedRequest,
                    destinationArrivedRequest) ||
                other.destinationArrivedRequest == destinationArrivedRequest) &&
            (identical(other.stepOneCompleteRequest, stepOneCompleteRequest) ||
                other.stepOneCompleteRequest == stepOneCompleteRequest) &&
            (identical(other.stepTwoStartRequest, stepTwoStartRequest) ||
                other.stepTwoStartRequest == stepTwoStartRequest) &&
            (identical(other.stepTwoCompleteRequest, stepTwoCompleteRequest) ||
                other.stepTwoCompleteRequest == stepTwoCompleteRequest) &&
            (identical(other.CurrentStatus, CurrentStatus) ||
                other.CurrentStatus == CurrentStatus) &&
            (identical(other.startingDate, startingDate) ||
                other.startingDate == startingDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      tripId,
      jobsiteId,
      tripStartRequest,
      destinationArrivedRequest,
      stepOneCompleteRequest,
      stepTwoStartRequest,
      stepTwoCompleteRequest,
      CurrentStatus,
      startingDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BigModelCopyWith<_$_BigModel> get copyWith =>
      __$$_BigModelCopyWithImpl<_$_BigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BigModelToJson(
      this,
    );
  }
}

abstract class _BigModel implements BigModel {
  const factory _BigModel(
      {required final String userId,
      required final int tripId,
      required final int jobsiteId,
      required final TripStartRequest tripStartRequest,
      required final DestinationArrivedRequest destinationArrivedRequest,
      required final StepOneCompleteRequest stepOneCompleteRequest,
      required final StepTwoStartRequest stepTwoStartRequest,
      required final StepTwoCompleteRequest stepTwoCompleteRequest,
      required final String CurrentStatus,
      required final DateTime startingDate}) = _$_BigModel;

  factory _BigModel.fromJson(Map<String, dynamic> json) = _$_BigModel.fromJson;

  @override
  String get userId;
  @override
  int get tripId;
  @override
  int get jobsiteId;
  @override
  TripStartRequest get tripStartRequest;
  @override
  DestinationArrivedRequest get destinationArrivedRequest;
  @override
  StepOneCompleteRequest get stepOneCompleteRequest;
  @override
  StepTwoStartRequest get stepTwoStartRequest;
  @override
  StepTwoCompleteRequest get stepTwoCompleteRequest;
  @override
  String get CurrentStatus;
  @override
  DateTime get startingDate;
  @override
  @JsonKey(ignore: true)
  _$$_BigModelCopyWith<_$_BigModel> get copyWith =>
      throw _privateConstructorUsedError;
}
