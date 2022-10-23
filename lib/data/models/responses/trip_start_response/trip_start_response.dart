import 'package:freezed_annotation/freezed_annotation.dart';


part 'trip_start_response.freezed.dart';
part 'trip_start_response.g.dart';

@freezed
class TripStartResponse with _$TripStartResponse {
  const factory TripStartResponse({
    required String message,
    required TakeFiveSurvey data,
  }) = _TripStartResponse;

  factory TripStartResponse.fromJson(Map<String, dynamic> json) => _$TripStartResponseFromJson(json);
}

@freezed
class TakeFiveSurvey with _$TakeFiveSurvey {
  const factory TakeFiveSurvey({
   required List<SurveyStaticDataModel> stepOneQuestions,
   required List<SurveyStaticDataModel> stepTwoQuestions,
   required List<DangerControlsWithCategoryModel> dangerControlsWithCategoryModels,
  }) = _TakeFiveSurvey;

  factory TakeFiveSurvey.fromJson(Map<String, dynamic> json) => _$TakeFiveSurveyFromJson(json);
}

@freezed
class DangerControlsWithCategoryModel with _$DangerControlsWithCategoryModel {
  const factory DangerControlsWithCategoryModel({
   required String dangerCategory,
   required int dangerCategoryId,
   required List<DangerModel> dangerModels,
  }) = _DangerControlsWithCategoryModel;

  factory DangerControlsWithCategoryModel.fromJson(Map<String, dynamic> json) => _$DangerControlsWithCategoryModelFromJson(json);
}

@freezed
class DangerModel with _$DangerModel {
  const factory DangerModel({
   required int id,
   required String text,
   required List<SurveyStaticDataModel> controls,
  }) = _DangerModel;

  factory DangerModel.fromJson(Map<String, dynamic> json) => _$DangerModelFromJson(json);
}

@freezed
class SurveyStaticDataModel with _$SurveyStaticDataModel {
  const factory SurveyStaticDataModel({
    required int id,
    required String text,
  }) = _SurveyStaticDataModel;

  factory SurveyStaticDataModel.fromJson(Map<String, dynamic> json) => _$SurveyStaticDataModelFromJson(json);
}
