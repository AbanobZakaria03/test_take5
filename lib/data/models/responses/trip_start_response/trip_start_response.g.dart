// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_start_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripStartResponse _$$_TripStartResponseFromJson(Map<String, dynamic> json) =>
    _$_TripStartResponse(
      message: json['message'] as String,
      data: TakeFiveSurvey.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TripStartResponseToJson(
        _$_TripStartResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
    };

_$_TakeFiveSurvey _$$_TakeFiveSurveyFromJson(Map<String, dynamic> json) =>
    _$_TakeFiveSurvey(
      stepOneQuestions: (json['stepOneQuestions'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepTwoQuestions: (json['stepTwoQuestions'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dangerControlsWithCategoryModels:
          (json['dangerControlsWithCategoryModels'] as List<dynamic>)
              .map((e) => DangerControlsWithCategoryModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_TakeFiveSurveyToJson(_$_TakeFiveSurvey instance) =>
    <String, dynamic>{
      'stepOneQuestions':
          instance.stepOneQuestions.map((e) => e.toJson()).toList(),
      'stepTwoQuestions':
          instance.stepTwoQuestions.map((e) => e.toJson()).toList(),
      'dangerControlsWithCategoryModels': instance
          .dangerControlsWithCategoryModels
          .map((e) => e.toJson())
          .toList(),
    };

_$_DangerControlsWithCategoryModel _$$_DangerControlsWithCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_DangerControlsWithCategoryModel(
      dangerCategory: json['dangerCategory'] as String,
      dangerCategoryId: json['dangerCategoryId'] as int,
      dangerModels: (json['dangerModels'] as List<dynamic>)
          .map((e) => DangerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DangerControlsWithCategoryModelToJson(
        _$_DangerControlsWithCategoryModel instance) =>
    <String, dynamic>{
      'dangerCategory': instance.dangerCategory,
      'dangerCategoryId': instance.dangerCategoryId,
      'dangerModels': instance.dangerModels.map((e) => e.toJson()).toList(),
    };

_$_DangerModel _$$_DangerModelFromJson(Map<String, dynamic> json) =>
    _$_DangerModel(
      id: json['id'] as int,
      text: json['text'] as String,
      controls: (json['controls'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DangerModelToJson(_$_DangerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'controls': instance.controls.map((e) => e.toJson()).toList(),
    };

_$_SurveyStaticDataModel _$$_SurveyStaticDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyStaticDataModel(
      id: json['id'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_SurveyStaticDataModelToJson(
        _$_SurveyStaticDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
