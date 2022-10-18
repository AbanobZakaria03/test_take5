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

TripStrartResponse _$TripStrartResponseFromJson(Map<String, dynamic> json) {
  return _TripStrartResponse.fromJson(json);
}

/// @nodoc
mixin _$TripStrartResponse {
  String get message => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripStrartResponseCopyWith<TripStrartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStrartResponseCopyWith<$Res> {
  factory $TripStrartResponseCopyWith(
          TripStrartResponse value, $Res Function(TripStrartResponse) then) =
      _$TripStrartResponseCopyWithImpl<$Res, TripStrartResponse>;
  @useResult
  $Res call({String message, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$TripStrartResponseCopyWithImpl<$Res, $Val extends TripStrartResponse>
    implements $TripStrartResponseCopyWith<$Res> {
  _$TripStrartResponseCopyWithImpl(this._value, this._then);

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
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TripStrartResponseCopyWith<$Res>
    implements $TripStrartResponseCopyWith<$Res> {
  factory _$$_TripStrartResponseCopyWith(_$_TripStrartResponse value,
          $Res Function(_$_TripStrartResponse) then) =
      __$$_TripStrartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TripStrartResponseCopyWithImpl<$Res>
    extends _$TripStrartResponseCopyWithImpl<$Res, _$_TripStrartResponse>
    implements _$$_TripStrartResponseCopyWith<$Res> {
  __$$_TripStrartResponseCopyWithImpl(
      _$_TripStrartResponse _value, $Res Function(_$_TripStrartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_TripStrartResponse(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripStrartResponse implements _TripStrartResponse {
  const _$_TripStrartResponse({required this.message, required this.data});

  factory _$_TripStrartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TripStrartResponseFromJson(json);

  @override
  final String message;
  @override
  final Data data;

  @override
  String toString() {
    return 'TripStrartResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripStrartResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripStrartResponseCopyWith<_$_TripStrartResponse> get copyWith =>
      __$$_TripStrartResponseCopyWithImpl<_$_TripStrartResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripStrartResponseToJson(
      this,
    );
  }
}

abstract class _TripStrartResponse implements TripStrartResponse {
  const factory _TripStrartResponse(
      {required final String message,
      required final Data data}) = _$_TripStrartResponse;

  factory _TripStrartResponse.fromJson(Map<String, dynamic> json) =
      _$_TripStrartResponse.fromJson;

  @override
  String get message;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_TripStrartResponseCopyWith<_$_TripStrartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<SurveyStaticDataModel> get stepOneQuestions =>
      throw _privateConstructorUsedError;
  List<SurveyStaticDataModel> get stepTwoQuestions =>
      throw _privateConstructorUsedError;
  List<DangerWithCategoryApiModel> get dangerWithCategoryApiModels =>
      throw _privateConstructorUsedError;
  List<MeasureControlWithDangerModel> get measureControlWithDangerModels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<SurveyStaticDataModel> stepOneQuestions,
      List<SurveyStaticDataModel> stepTwoQuestions,
      List<DangerWithCategoryApiModel> dangerWithCategoryApiModels,
      List<MeasureControlWithDangerModel> measureControlWithDangerModels});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepOneQuestions = null,
    Object? stepTwoQuestions = null,
    Object? dangerWithCategoryApiModels = null,
    Object? measureControlWithDangerModels = null,
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
      dangerWithCategoryApiModels: null == dangerWithCategoryApiModels
          ? _value.dangerWithCategoryApiModels
          : dangerWithCategoryApiModels // ignore: cast_nullable_to_non_nullable
              as List<DangerWithCategoryApiModel>,
      measureControlWithDangerModels: null == measureControlWithDangerModels
          ? _value.measureControlWithDangerModels
          : measureControlWithDangerModels // ignore: cast_nullable_to_non_nullable
              as List<MeasureControlWithDangerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SurveyStaticDataModel> stepOneQuestions,
      List<SurveyStaticDataModel> stepTwoQuestions,
      List<DangerWithCategoryApiModel> dangerWithCategoryApiModels,
      List<MeasureControlWithDangerModel> measureControlWithDangerModels});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepOneQuestions = null,
    Object? stepTwoQuestions = null,
    Object? dangerWithCategoryApiModels = null,
    Object? measureControlWithDangerModels = null,
  }) {
    return _then(_$_Data(
      stepOneQuestions: null == stepOneQuestions
          ? _value._stepOneQuestions
          : stepOneQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      stepTwoQuestions: null == stepTwoQuestions
          ? _value._stepTwoQuestions
          : stepTwoQuestions // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
      dangerWithCategoryApiModels: null == dangerWithCategoryApiModels
          ? _value._dangerWithCategoryApiModels
          : dangerWithCategoryApiModels // ignore: cast_nullable_to_non_nullable
              as List<DangerWithCategoryApiModel>,
      measureControlWithDangerModels: null == measureControlWithDangerModels
          ? _value._measureControlWithDangerModels
          : measureControlWithDangerModels // ignore: cast_nullable_to_non_nullable
              as List<MeasureControlWithDangerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required final List<SurveyStaticDataModel> stepOneQuestions,
      required final List<SurveyStaticDataModel> stepTwoQuestions,
      required final List<DangerWithCategoryApiModel>
          dangerWithCategoryApiModels,
      required final List<MeasureControlWithDangerModel>
          measureControlWithDangerModels})
      : _stepOneQuestions = stepOneQuestions,
        _stepTwoQuestions = stepTwoQuestions,
        _dangerWithCategoryApiModels = dangerWithCategoryApiModels,
        _measureControlWithDangerModels = measureControlWithDangerModels;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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

  final List<DangerWithCategoryApiModel> _dangerWithCategoryApiModels;
  @override
  List<DangerWithCategoryApiModel> get dangerWithCategoryApiModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerWithCategoryApiModels);
  }

  final List<MeasureControlWithDangerModel> _measureControlWithDangerModels;
  @override
  List<MeasureControlWithDangerModel> get measureControlWithDangerModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measureControlWithDangerModels);
  }

  @override
  String toString() {
    return 'Data(stepOneQuestions: $stepOneQuestions, stepTwoQuestions: $stepTwoQuestions, dangerWithCategoryApiModels: $dangerWithCategoryApiModels, measureControlWithDangerModels: $measureControlWithDangerModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other._stepOneQuestions, _stepOneQuestions) &&
            const DeepCollectionEquality()
                .equals(other._stepTwoQuestions, _stepTwoQuestions) &&
            const DeepCollectionEquality().equals(
                other._dangerWithCategoryApiModels,
                _dangerWithCategoryApiModels) &&
            const DeepCollectionEquality().equals(
                other._measureControlWithDangerModels,
                _measureControlWithDangerModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stepOneQuestions),
      const DeepCollectionEquality().hash(_stepTwoQuestions),
      const DeepCollectionEquality().hash(_dangerWithCategoryApiModels),
      const DeepCollectionEquality().hash(_measureControlWithDangerModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final List<SurveyStaticDataModel> stepOneQuestions,
      required final List<SurveyStaticDataModel> stepTwoQuestions,
      required final List<DangerWithCategoryApiModel>
          dangerWithCategoryApiModels,
      required final List<MeasureControlWithDangerModel>
          measureControlWithDangerModels}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<SurveyStaticDataModel> get stepOneQuestions;
  @override
  List<SurveyStaticDataModel> get stepTwoQuestions;
  @override
  List<DangerWithCategoryApiModel> get dangerWithCategoryApiModels;
  @override
  List<MeasureControlWithDangerModel> get measureControlWithDangerModels;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
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

DangerWithCategoryApiModel _$DangerWithCategoryApiModelFromJson(
    Map<String, dynamic> json) {
  return _DangerWithCategoryApiModel.fromJson(json);
}

/// @nodoc
mixin _$DangerWithCategoryApiModel {
  String get dangerCategory => throw _privateConstructorUsedError;
  int get dangerCategoryId => throw _privateConstructorUsedError;
  List<SurveyStaticDataModel> get dangerModels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerWithCategoryApiModelCopyWith<DangerWithCategoryApiModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerWithCategoryApiModelCopyWith<$Res> {
  factory $DangerWithCategoryApiModelCopyWith(DangerWithCategoryApiModel value,
          $Res Function(DangerWithCategoryApiModel) then) =
      _$DangerWithCategoryApiModelCopyWithImpl<$Res,
          DangerWithCategoryApiModel>;
  @useResult
  $Res call(
      {String dangerCategory,
      int dangerCategoryId,
      List<SurveyStaticDataModel> dangerModels});
}

/// @nodoc
class _$DangerWithCategoryApiModelCopyWithImpl<$Res,
        $Val extends DangerWithCategoryApiModel>
    implements $DangerWithCategoryApiModelCopyWith<$Res> {
  _$DangerWithCategoryApiModelCopyWithImpl(this._value, this._then);

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
              as List<SurveyStaticDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DangerWithCategoryApiModelCopyWith<$Res>
    implements $DangerWithCategoryApiModelCopyWith<$Res> {
  factory _$$_DangerWithCategoryApiModelCopyWith(
          _$_DangerWithCategoryApiModel value,
          $Res Function(_$_DangerWithCategoryApiModel) then) =
      __$$_DangerWithCategoryApiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dangerCategory,
      int dangerCategoryId,
      List<SurveyStaticDataModel> dangerModels});
}

/// @nodoc
class __$$_DangerWithCategoryApiModelCopyWithImpl<$Res>
    extends _$DangerWithCategoryApiModelCopyWithImpl<$Res,
        _$_DangerWithCategoryApiModel>
    implements _$$_DangerWithCategoryApiModelCopyWith<$Res> {
  __$$_DangerWithCategoryApiModelCopyWithImpl(
      _$_DangerWithCategoryApiModel _value,
      $Res Function(_$_DangerWithCategoryApiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerCategory = null,
    Object? dangerCategoryId = null,
    Object? dangerModels = null,
  }) {
    return _then(_$_DangerWithCategoryApiModel(
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
              as List<SurveyStaticDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DangerWithCategoryApiModel implements _DangerWithCategoryApiModel {
  const _$_DangerWithCategoryApiModel(
      {required this.dangerCategory,
      required this.dangerCategoryId,
      required final List<SurveyStaticDataModel> dangerModels})
      : _dangerModels = dangerModels;

  factory _$_DangerWithCategoryApiModel.fromJson(Map<String, dynamic> json) =>
      _$$_DangerWithCategoryApiModelFromJson(json);

  @override
  final String dangerCategory;
  @override
  final int dangerCategoryId;
  final List<SurveyStaticDataModel> _dangerModels;
  @override
  List<SurveyStaticDataModel> get dangerModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerModels);
  }

  @override
  String toString() {
    return 'DangerWithCategoryApiModel(dangerCategory: $dangerCategory, dangerCategoryId: $dangerCategoryId, dangerModels: $dangerModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DangerWithCategoryApiModel &&
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
  _$$_DangerWithCategoryApiModelCopyWith<_$_DangerWithCategoryApiModel>
      get copyWith => __$$_DangerWithCategoryApiModelCopyWithImpl<
          _$_DangerWithCategoryApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DangerWithCategoryApiModelToJson(
      this,
    );
  }
}

abstract class _DangerWithCategoryApiModel
    implements DangerWithCategoryApiModel {
  const factory _DangerWithCategoryApiModel(
          {required final String dangerCategory,
          required final int dangerCategoryId,
          required final List<SurveyStaticDataModel> dangerModels}) =
      _$_DangerWithCategoryApiModel;

  factory _DangerWithCategoryApiModel.fromJson(Map<String, dynamic> json) =
      _$_DangerWithCategoryApiModel.fromJson;

  @override
  String get dangerCategory;
  @override
  int get dangerCategoryId;
  @override
  List<SurveyStaticDataModel> get dangerModels;
  @override
  @JsonKey(ignore: true)
  _$$_DangerWithCategoryApiModelCopyWith<_$_DangerWithCategoryApiModel>
      get copyWith => throw _privateConstructorUsedError;
}

MeasureControlWithDangerModel _$MeasureControlWithDangerModelFromJson(
    Map<String, dynamic> json) {
  return _MeasureControlWithDangerModel.fromJson(json);
}

/// @nodoc
mixin _$MeasureControlWithDangerModel {
  int get dangerId => throw _privateConstructorUsedError;
  String get dangerName => throw _privateConstructorUsedError;
  List<SurveyStaticDataModel> get dangerControlModels =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureControlWithDangerModelCopyWith<MeasureControlWithDangerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureControlWithDangerModelCopyWith<$Res> {
  factory $MeasureControlWithDangerModelCopyWith(
          MeasureControlWithDangerModel value,
          $Res Function(MeasureControlWithDangerModel) then) =
      _$MeasureControlWithDangerModelCopyWithImpl<$Res,
          MeasureControlWithDangerModel>;
  @useResult
  $Res call(
      {int dangerId,
      String dangerName,
      List<SurveyStaticDataModel> dangerControlModels});
}

/// @nodoc
class _$MeasureControlWithDangerModelCopyWithImpl<$Res,
        $Val extends MeasureControlWithDangerModel>
    implements $MeasureControlWithDangerModelCopyWith<$Res> {
  _$MeasureControlWithDangerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerId = null,
    Object? dangerName = null,
    Object? dangerControlModels = null,
  }) {
    return _then(_value.copyWith(
      dangerId: null == dangerId
          ? _value.dangerId
          : dangerId // ignore: cast_nullable_to_non_nullable
              as int,
      dangerName: null == dangerName
          ? _value.dangerName
          : dangerName // ignore: cast_nullable_to_non_nullable
              as String,
      dangerControlModels: null == dangerControlModels
          ? _value.dangerControlModels
          : dangerControlModels // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasureControlWithDangerModelCopyWith<$Res>
    implements $MeasureControlWithDangerModelCopyWith<$Res> {
  factory _$$_MeasureControlWithDangerModelCopyWith(
          _$_MeasureControlWithDangerModel value,
          $Res Function(_$_MeasureControlWithDangerModel) then) =
      __$$_MeasureControlWithDangerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dangerId,
      String dangerName,
      List<SurveyStaticDataModel> dangerControlModels});
}

/// @nodoc
class __$$_MeasureControlWithDangerModelCopyWithImpl<$Res>
    extends _$MeasureControlWithDangerModelCopyWithImpl<$Res,
        _$_MeasureControlWithDangerModel>
    implements _$$_MeasureControlWithDangerModelCopyWith<$Res> {
  __$$_MeasureControlWithDangerModelCopyWithImpl(
      _$_MeasureControlWithDangerModel _value,
      $Res Function(_$_MeasureControlWithDangerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerId = null,
    Object? dangerName = null,
    Object? dangerControlModels = null,
  }) {
    return _then(_$_MeasureControlWithDangerModel(
      dangerId: null == dangerId
          ? _value.dangerId
          : dangerId // ignore: cast_nullable_to_non_nullable
              as int,
      dangerName: null == dangerName
          ? _value.dangerName
          : dangerName // ignore: cast_nullable_to_non_nullable
              as String,
      dangerControlModels: null == dangerControlModels
          ? _value._dangerControlModels
          : dangerControlModels // ignore: cast_nullable_to_non_nullable
              as List<SurveyStaticDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasureControlWithDangerModel
    implements _MeasureControlWithDangerModel {
  const _$_MeasureControlWithDangerModel(
      {required this.dangerId,
      required this.dangerName,
      required final List<SurveyStaticDataModel> dangerControlModels})
      : _dangerControlModels = dangerControlModels;

  factory _$_MeasureControlWithDangerModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_MeasureControlWithDangerModelFromJson(json);

  @override
  final int dangerId;
  @override
  final String dangerName;
  final List<SurveyStaticDataModel> _dangerControlModels;
  @override
  List<SurveyStaticDataModel> get dangerControlModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerControlModels);
  }

  @override
  String toString() {
    return 'MeasureControlWithDangerModel(dangerId: $dangerId, dangerName: $dangerName, dangerControlModels: $dangerControlModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasureControlWithDangerModel &&
            (identical(other.dangerId, dangerId) ||
                other.dangerId == dangerId) &&
            (identical(other.dangerName, dangerName) ||
                other.dangerName == dangerName) &&
            const DeepCollectionEquality()
                .equals(other._dangerControlModels, _dangerControlModels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dangerId, dangerName,
      const DeepCollectionEquality().hash(_dangerControlModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureControlWithDangerModelCopyWith<_$_MeasureControlWithDangerModel>
      get copyWith => __$$_MeasureControlWithDangerModelCopyWithImpl<
          _$_MeasureControlWithDangerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureControlWithDangerModelToJson(
      this,
    );
  }
}

abstract class _MeasureControlWithDangerModel
    implements MeasureControlWithDangerModel {
  const factory _MeasureControlWithDangerModel(
          {required final int dangerId,
          required final String dangerName,
          required final List<SurveyStaticDataModel> dangerControlModels}) =
      _$_MeasureControlWithDangerModel;

  factory _MeasureControlWithDangerModel.fromJson(Map<String, dynamic> json) =
      _$_MeasureControlWithDangerModel.fromJson;

  @override
  int get dangerId;
  @override
  String get dangerName;
  @override
  List<SurveyStaticDataModel> get dangerControlModels;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureControlWithDangerModelCopyWith<_$_MeasureControlWithDangerModel>
      get copyWith => throw _privateConstructorUsedError;
}
