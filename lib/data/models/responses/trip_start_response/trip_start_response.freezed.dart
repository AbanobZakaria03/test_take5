// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_start_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripStartResponse _$TripStartResponseFromJson(Map<String, dynamic> json) {
  return _TripStartResponse.fromJson(json);
}

/// @nodoc
mixin _$TripStartResponse {
  String get message => throw _privateConstructorUsedError;
  TakeFiveSurvey get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripStartResponseCopyWith<TripStartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStartResponseCopyWith<$Res> {
  factory $TripStartResponseCopyWith(
          TripStartResponse value, $Res Function(TripStartResponse) then) =
      _$TripStartResponseCopyWithImpl<$Res, TripStartResponse>;
  @useResult
  $Res call({String message, TakeFiveSurvey data});

  $TakeFiveSurveyCopyWith<$Res> get data;
}

/// @nodoc
class _$TripStartResponseCopyWithImpl<$Res, $Val extends TripStartResponse>
    implements $TripStartResponseCopyWith<$Res> {
  _$TripStartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TakeFiveSurvey,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TakeFiveSurveyCopyWith<$Res> get data {
    return $TakeFiveSurveyCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TripStartResponseCopyWith<$Res>
    implements $TripStartResponseCopyWith<$Res> {
  factory _$$_TripStartResponseCopyWith(_$_TripStartResponse value,
          $Res Function(_$_TripStartResponse) then) =
      __$$_TripStartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, TakeFiveSurvey data});

  @override
  $TakeFiveSurveyCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TripStartResponseCopyWithImpl<$Res>
    extends _$TripStartResponseCopyWithImpl<$Res, _$_TripStartResponse>
    implements _$$_TripStartResponseCopyWith<$Res> {
  __$$_TripStartResponseCopyWithImpl(
      _$_TripStartResponse _value, $Res Function(_$_TripStartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_TripStartResponse(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TakeFiveSurvey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripStartResponse implements _TripStartResponse {
  const _$_TripStartResponse({required this.message, required this.data});

  factory _$_TripStartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TripStartResponseFromJson(json);

  @override
  final String message;
  @override
  final TakeFiveSurvey data;

  @override
  String toString() {
    return 'TripStartResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripStartResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripStartResponseCopyWith<_$_TripStartResponse> get copyWith =>
      __$$_TripStartResponseCopyWithImpl<_$_TripStartResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripStartResponseToJson(
      this,
    );
  }
}

abstract class _TripStartResponse implements TripStartResponse {
  const factory _TripStartResponse(
      {required final String message,
      required final TakeFiveSurvey data}) = _$_TripStartResponse;

  factory _TripStartResponse.fromJson(Map<String, dynamic> json) =
      _$_TripStartResponse.fromJson;

  @override
  String get message;
  @override
  TakeFiveSurvey get data;
  @override
  @JsonKey(ignore: true)
  _$$_TripStartResponseCopyWith<_$_TripStartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TakeFiveSurvey _$TakeFiveSurveyFromJson(Map<String, dynamic> json) {
  return _TakeFiveSurvey.fromJson(json);
}

/// @nodoc
mixin _$TakeFiveSurvey {
  List<SurveyStaticDataModel> get stepOneQuestions =>
      throw _privateConstructorUsedError;
  List<SurveyStaticDataModel> get stepTwoQuestions =>
      throw _privateConstructorUsedError;
  List<DangerControlsWithCategoryModel> get dangerControlsWithCategoryModels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TakeFiveSurveyCopyWith<TakeFiveSurvey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeFiveSurveyCopyWith<$Res> {
  factory $TakeFiveSurveyCopyWith(
          TakeFiveSurvey value, $Res Function(TakeFiveSurvey) then) =
      _$TakeFiveSurveyCopyWithImpl<$Res, TakeFiveSurvey>;
  @useResult
  $Res call(
      {List<SurveyStaticDataModel> stepOneQuestions,
      List<SurveyStaticDataModel> stepTwoQuestions,
      List<DangerControlsWithCategoryModel> dangerControlsWithCategoryModels});
}

/// @nodoc
class _$TakeFiveSurveyCopyWithImpl<$Res, $Val extends TakeFiveSurvey>
    implements $TakeFiveSurveyCopyWith<$Res> {
  _$TakeFiveSurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepOneQuestions = null,
    Object? stepTwoQuestions = null,
    Object? dangerControlsWithCategoryModels = null,
  }) {
    return _then(_value.copyWith(
      stepOneQuestions: null == stepOneQuestions
          ? _value.stepOneQuestions
          : stepOneQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      stepTwoQuestions: null == stepTwoQuestions
          ? _value.stepTwoQuestions
          : stepTwoQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      dangerControlsWithCategoryModels: null == dangerControlsWithCategoryModels
          ? _value.dangerControlsWithCategoryModels
          : dangerControlsWithCategoryModels // ignore: cast_nullable_to_non_nullable
              as List<DangerControlsWithCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TakeFiveSurveyCopyWith<$Res>
    implements $TakeFiveSurveyCopyWith<$Res> {
  factory _$$_TakeFiveSurveyCopyWith(
          _$_TakeFiveSurvey value, $Res Function(_$_TakeFiveSurvey) then) =
      __$$_TakeFiveSurveyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SurveyStaticDataModel> stepOneQuestions,
      List<SurveyStaticDataModel> stepTwoQuestions,
      List<DangerControlsWithCategoryModel> dangerControlsWithCategoryModels});
}

/// @nodoc
class __$$_TakeFiveSurveyCopyWithImpl<$Res>
    extends _$TakeFiveSurveyCopyWithImpl<$Res, _$_TakeFiveSurvey>
    implements _$$_TakeFiveSurveyCopyWith<$Res> {
  __$$_TakeFiveSurveyCopyWithImpl(
      _$_TakeFiveSurvey _value, $Res Function(_$_TakeFiveSurvey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepOneQuestions = null,
    Object? stepTwoQuestions = null,
    Object? dangerControlsWithCategoryModels = null,
  }) {
    return _then(_$_TakeFiveSurvey(
      stepOneQuestions: null == stepOneQuestions
          ? _value._stepOneQuestions
          : stepOneQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      stepTwoQuestions: null == stepTwoQuestions
          ? _value._stepTwoQuestions
          : stepTwoQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      dangerControlsWithCategoryModels: null == dangerControlsWithCategoryModels
          ? _value._dangerControlsWithCategoryModels
          : dangerControlsWithCategoryModels // ignore: cast_nullable_to_non_nullable
              as List<DangerControlsWithCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TakeFiveSurvey implements _TakeFiveSurvey {
  const _$_TakeFiveSurvey(
      {required final List<SurveyStaticDataModel> stepOneQuestions,
      required final List<SurveyStaticDataModel> stepTwoQuestions,
      required final List<DangerControlsWithCategoryModel>
          dangerControlsWithCategoryModels})
      : _stepOneQuestions = stepOneQuestions,
        _stepTwoQuestions = stepTwoQuestions,
        _dangerControlsWithCategoryModels = dangerControlsWithCategoryModels;

  factory _$_TakeFiveSurvey.fromJson(Map<String, dynamic> json) =>
      _$$_TakeFiveSurveyFromJson(json);

  final List<SurveyStaticDataModel> _stepOneQuestions;
  @override
  List<SurveyStaticDataModel> get stepOneQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepOneQuestions);
  }

  final List<SurveyStaticDataModel> _stepTwoQuestions;
  @override
  List<SurveyStaticDataModel> get stepTwoQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepTwoQuestions);
  }

  final List<DangerControlsWithCategoryModel> _dangerControlsWithCategoryModels;
  @override
  List<DangerControlsWithCategoryModel> get dangerControlsWithCategoryModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerControlsWithCategoryModels);
  }

  @override
  String toString() {
    return 'TakeFiveSurvey(stepOneQuestions: $stepOneQuestions, stepTwoQuestions: $stepTwoQuestions, dangerControlsWithCategoryModels: $dangerControlsWithCategoryModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TakeFiveSurvey &&
            const DeepCollectionEquality()
                .equals(other._stepOneQuestions, _stepOneQuestions) &&
            const DeepCollectionEquality()
                .equals(other._stepTwoQuestions, _stepTwoQuestions) &&
            const DeepCollectionEquality().equals(
                other._dangerControlsWithCategoryModels,
                _dangerControlsWithCategoryModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stepOneQuestions),
      const DeepCollectionEquality().hash(_stepTwoQuestions),
      const DeepCollectionEquality().hash(_dangerControlsWithCategoryModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TakeFiveSurveyCopyWith<_$_TakeFiveSurvey> get copyWith =>
      __$$_TakeFiveSurveyCopyWithImpl<_$_TakeFiveSurvey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TakeFiveSurveyToJson(
      this,
    );
  }
}

abstract class _TakeFiveSurvey implements TakeFiveSurvey {
  const factory _TakeFiveSurvey(
      {required final List<SurveyStaticDataModel> stepOneQuestions,
      required final List<SurveyStaticDataModel> stepTwoQuestions,
      required final List<DangerControlsWithCategoryModel>
          dangerControlsWithCategoryModels}) = _$_TakeFiveSurvey;

  factory _TakeFiveSurvey.fromJson(Map<String, dynamic> json) =
      _$_TakeFiveSurvey.fromJson;

  @override
  List<SurveyStaticDataModel> get stepOneQuestions;
  @override
  List<SurveyStaticDataModel> get stepTwoQuestions;
  @override
  List<DangerControlsWithCategoryModel> get dangerControlsWithCategoryModels;
  @override
  @JsonKey(ignore: true)
  _$$_TakeFiveSurveyCopyWith<_$_TakeFiveSurvey> get copyWith =>
      throw _privateConstructorUsedError;
}

DangerControlsWithCategoryModel _$DangerControlsWithCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _DangerControlsWithCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$DangerControlsWithCategoryModel {
  String get dangerCategory => throw _privateConstructorUsedError;
  int get dangerCategoryId => throw _privateConstructorUsedError;
  List<DangerModel> get dangerModels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerControlsWithCategoryModelCopyWith<DangerControlsWithCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerControlsWithCategoryModelCopyWith<$Res> {
  factory $DangerControlsWithCategoryModelCopyWith(
          DangerControlsWithCategoryModel value,
          $Res Function(DangerControlsWithCategoryModel) then) =
      _$DangerControlsWithCategoryModelCopyWithImpl<$Res,
          DangerControlsWithCategoryModel>;
  @useResult
  $Res call(
      {String dangerCategory,
      int dangerCategoryId,
      List<DangerModel> dangerModels});
}

/// @nodoc
class _$DangerControlsWithCategoryModelCopyWithImpl<$Res,
        $Val extends DangerControlsWithCategoryModel>
    implements $DangerControlsWithCategoryModelCopyWith<$Res> {
  _$DangerControlsWithCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerCategory = null,
    Object? dangerCategoryId = null,
    Object? dangerModels = null,
  }) {
    return _then(_value.copyWith(
      dangerCategory: null == dangerCategory
          ? _value.dangerCategory
          : dangerCategory // ignore: cast_nullable_to_non_nullable
              as String,
      dangerCategoryId: null == dangerCategoryId
          ? _value.dangerCategoryId
          : dangerCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      dangerModels: null == dangerModels
          ? _value.dangerModels
          : dangerModels // ignore: cast_nullable_to_non_nullable
              as List<DangerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DangerControlsWithCategoryModelCopyWith<$Res>
    implements $DangerControlsWithCategoryModelCopyWith<$Res> {
  factory _$$_DangerControlsWithCategoryModelCopyWith(
          _$_DangerControlsWithCategoryModel value,
          $Res Function(_$_DangerControlsWithCategoryModel) then) =
      __$$_DangerControlsWithCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dangerCategory,
      int dangerCategoryId,
      List<DangerModel> dangerModels});
}

/// @nodoc
class __$$_DangerControlsWithCategoryModelCopyWithImpl<$Res>
    extends _$DangerControlsWithCategoryModelCopyWithImpl<$Res,
        _$_DangerControlsWithCategoryModel>
    implements _$$_DangerControlsWithCategoryModelCopyWith<$Res> {
  __$$_DangerControlsWithCategoryModelCopyWithImpl(
      _$_DangerControlsWithCategoryModel _value,
      $Res Function(_$_DangerControlsWithCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerCategory = null,
    Object? dangerCategoryId = null,
    Object? dangerModels = null,
  }) {
    return _then(_$_DangerControlsWithCategoryModel(
      dangerCategory: null == dangerCategory
          ? _value.dangerCategory
          : dangerCategory // ignore: cast_nullable_to_non_nullable
              as String,
      dangerCategoryId: null == dangerCategoryId
          ? _value.dangerCategoryId
          : dangerCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      dangerModels: null == dangerModels
          ? _value._dangerModels
          : dangerModels // ignore: cast_nullable_to_non_nullable
              as List<DangerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DangerControlsWithCategoryModel
    implements _DangerControlsWithCategoryModel {
  const _$_DangerControlsWithCategoryModel(
      {required this.dangerCategory,
      required this.dangerCategoryId,
      required final List<DangerModel> dangerModels})
      : _dangerModels = dangerModels;

  factory _$_DangerControlsWithCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_DangerControlsWithCategoryModelFromJson(json);

  @override
  final String dangerCategory;
  @override
  final int dangerCategoryId;
  final List<DangerModel> _dangerModels;
  @override
  List<DangerModel> get dangerModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerModels);
  }

  @override
  String toString() {
    return 'DangerControlsWithCategoryModel(dangerCategory: $dangerCategory, dangerCategoryId: $dangerCategoryId, dangerModels: $dangerModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DangerControlsWithCategoryModel &&
            (identical(other.dangerCategory, dangerCategory) ||
                other.dangerCategory == dangerCategory) &&
            (identical(other.dangerCategoryId, dangerCategoryId) ||
                other.dangerCategoryId == dangerCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._dangerModels, _dangerModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dangerCategory, dangerCategoryId,
      const DeepCollectionEquality().hash(_dangerModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DangerControlsWithCategoryModelCopyWith<
          _$_DangerControlsWithCategoryModel>
      get copyWith => __$$_DangerControlsWithCategoryModelCopyWithImpl<
          _$_DangerControlsWithCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DangerControlsWithCategoryModelToJson(
      this,
    );
  }
}

abstract class _DangerControlsWithCategoryModel
    implements DangerControlsWithCategoryModel {
  const factory _DangerControlsWithCategoryModel(
          {required final String dangerCategory,
          required final int dangerCategoryId,
          required final List<DangerModel> dangerModels}) =
      _$_DangerControlsWithCategoryModel;

  factory _DangerControlsWithCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_DangerControlsWithCategoryModel.fromJson;

  @override
  String get dangerCategory;
  @override
  int get dangerCategoryId;
  @override
  List<DangerModel> get dangerModels;
  @override
  @JsonKey(ignore: true)
  _$$_DangerControlsWithCategoryModelCopyWith<
          _$_DangerControlsWithCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

DangerModel _$DangerModelFromJson(Map<String, dynamic> json) {
  return _DangerModel.fromJson(json);
}

/// @nodoc
mixin _$DangerModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<SurveyStaticDataModel> get controls =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerModelCopyWith<DangerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerModelCopyWith<$Res> {
  factory $DangerModelCopyWith(
          DangerModel value, $Res Function(DangerModel) then) =
      _$DangerModelCopyWithImpl<$Res, DangerModel>;
  @useResult
  $Res call({int id, String text, List<SurveyStaticDataModel> controls});
}

/// @nodoc
class _$DangerModelCopyWithImpl<$Res, $Val extends DangerModel>
    implements $DangerModelCopyWith<$Res> {
  _$DangerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? controls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      controls: null == controls
          ? _value.controls
          : controls // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DangerModelCopyWith<$Res>
    implements $DangerModelCopyWith<$Res> {
  factory _$$_DangerModelCopyWith(
          _$_DangerModel value, $Res Function(_$_DangerModel) then) =
      __$$_DangerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, List<SurveyStaticDataModel> controls});
}

/// @nodoc
class __$$_DangerModelCopyWithImpl<$Res>
    extends _$DangerModelCopyWithImpl<$Res, _$_DangerModel>
    implements _$$_DangerModelCopyWith<$Res> {
  __$$_DangerModelCopyWithImpl(
      _$_DangerModel _value, $Res Function(_$_DangerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? controls = null,
  }) {
    return _then(_$_DangerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      controls: null == controls
          ? _value._controls
          : controls // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DangerModel implements _DangerModel {
  const _$_DangerModel(
      {required this.id,
      required this.text,
      required final List<SurveyStaticDataModel> controls})
      : _controls = controls;

  factory _$_DangerModel.fromJson(Map<String, dynamic> json) =>
      _$$_DangerModelFromJson(json);

  @override
  final int id;
  @override
  final String text;
  final List<SurveyStaticDataModel> _controls;
  @override
  List<SurveyStaticDataModel> get controls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controls);
  }

  @override
  String toString() {
    return 'DangerModel(id: $id, text: $text, controls: $controls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DangerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._controls, _controls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, const DeepCollectionEquality().hash(_controls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DangerModelCopyWith<_$_DangerModel> get copyWith =>
      __$$_DangerModelCopyWithImpl<_$_DangerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DangerModelToJson(
      this,
    );
  }
}

abstract class _DangerModel implements DangerModel {
  const factory _DangerModel(
      {required final int id,
      required final String text,
      required final List<SurveyStaticDataModel> controls}) = _$_DangerModel;

  factory _DangerModel.fromJson(Map<String, dynamic> json) =
      _$_DangerModel.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  List<SurveyStaticDataModel> get controls;
  @override
  @JsonKey(ignore: true)
  _$$_DangerModelCopyWith<_$_DangerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyStaticDataModel _$SurveyStaticDataModelFromJson(
    Map<String, dynamic> json) {
  return _SurveyStaticDataModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyStaticDataModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyStaticDataModelCopyWith<SurveyStaticDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStaticDataModelCopyWith<$Res> {
  factory $SurveyStaticDataModelCopyWith(SurveyStaticDataModel value,
          $Res Function(SurveyStaticDataModel) then) =
      _$SurveyStaticDataModelCopyWithImpl<$Res, SurveyStaticDataModel>;
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class _$SurveyStaticDataModelCopyWithImpl<$Res,
        $Val extends SurveyStaticDataModel>
    implements $SurveyStaticDataModelCopyWith<$Res> {
  _$SurveyStaticDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyStaticDataModelCopyWith<$Res>
    implements $SurveyStaticDataModelCopyWith<$Res> {
  factory _$$_SurveyStaticDataModelCopyWith(_$_SurveyStaticDataModel value,
          $Res Function(_$_SurveyStaticDataModel) then) =
      __$$_SurveyStaticDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$_SurveyStaticDataModelCopyWithImpl<$Res>
    extends _$SurveyStaticDataModelCopyWithImpl<$Res, _$_SurveyStaticDataModel>
    implements _$$_SurveyStaticDataModelCopyWith<$Res> {
  __$$_SurveyStaticDataModelCopyWithImpl(_$_SurveyStaticDataModel _value,
      $Res Function(_$_SurveyStaticDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$_SurveyStaticDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyStaticDataModel implements _SurveyStaticDataModel {
  const _$_SurveyStaticDataModel({required this.id, required this.text});

  factory _$_SurveyStaticDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyStaticDataModelFromJson(json);

  @override
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'SurveyStaticDataModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyStaticDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyStaticDataModelCopyWith<_$_SurveyStaticDataModel> get copyWith =>
      __$$_SurveyStaticDataModelCopyWithImpl<_$_SurveyStaticDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyStaticDataModelToJson(
      this,
    );
  }
}

abstract class _SurveyStaticDataModel implements SurveyStaticDataModel {
  const factory _SurveyStaticDataModel(
      {required final int id,
      required final String text}) = _$_SurveyStaticDataModel;

  factory _SurveyStaticDataModel.fromJson(Map<String, dynamic> json) =
      _$_SurveyStaticDataModel.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyStaticDataModelCopyWith<_$_SurveyStaticDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
