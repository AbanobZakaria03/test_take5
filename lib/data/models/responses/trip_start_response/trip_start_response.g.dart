// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_start_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripStrartResponse _$$_TripStrartResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TripStrartResponse(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TripStrartResponseToJson(
        _$_TripStrartResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      stepOneQuestions: (json['stepOneQuestions'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepTwoQuestions: (json['stepTwoQuestions'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dangerWithCategoryModels:
          (json['dangerWithCategoryModels'] as List<dynamic>)
              .map((e) =>
                  DangerWithCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      measureControlWithDangerModels: (json['measureControlWithDangerModels']
              as List<dynamic>)
          .map((e) =>
              MeasureControlWithDangerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'stepOneQuestions':
          instance.stepOneQuestions.map((e) => e.toJson()).toList(),
      'stepTwoQuestions':
          instance.stepTwoQuestions.map((e) => e.toJson()).toList(),
      'dangerWithCategoryModels':
          instance.dangerWithCategoryModels.map((e) => e.toJson()).toList(),
      'measureControlWithDangerModels': instance.measureControlWithDangerModels
          .map((e) => e.toJson())
          .toList(),
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

_$_DangerWithCategoryModel _$$_DangerWithCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_DangerWithCategoryModel(
      dangerCategory: json['dangerCategory'] as String,
      dangerCategoryId: json['dangerCategoryId'] as int,
      dangerModels: (json['dangerModels'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DangerWithCategoryModelToJson(
        _$_DangerWithCategoryModel instance) =>
    <String, dynamic>{
      'dangerCategory': instance.dangerCategory,
      'dangerCategoryId': instance.dangerCategoryId,
      'dangerModels': instance.dangerModels.map((e) => e.toJson()).toList(),
    };

_$_MeasureControlWithDangerModel _$$_MeasureControlWithDangerModelFromJson(
        Map<String, dynamic> json) =>
    _$_MeasureControlWithDangerModel(
      dangerId: json['dangerId'] as int,
      dangerName: json['dangerName'] as String,
      dangerControlModels: (json['dangerControlModels'] as List<dynamic>)
          .map((e) => SurveyStaticDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MeasureControlWithDangerModelToJson(
        _$_MeasureControlWithDangerModel instance) =>
    <String, dynamic>{
      'dangerId': instance.dangerId,
      'dangerName': instance.dangerName,
      'dangerControlModels':
          instance.dangerControlModels.map((e) => e.toJson()).toList(),
    };
