import 'package:freezed_annotation/freezed_annotation.dart';


part 'trip_start_response.freezed.dart';
part 'trip_start_response.g.dart';

@freezed
class TripStrartResponse with _$TripStrartResponse {
  const factory TripStrartResponse({
    required String message,
    required Data data,
  }) = _TripStrartResponse;

  factory TripStrartResponse.fromJson(Map<String, dynamic> json) => _$TripStrartResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
   required List<SurveyStaticDataModel> stepOneQuestions,
   required List<SurveyStaticDataModel> stepTwoQuestions,
   required List<DangerWithCategoryModel> dangerWithCategoryModels,
   required List<MeasureControlWithDangerModel> measureControlWithDangerModels,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class SurveyStaticDataModel with _$SurveyStaticDataModel {
  const factory SurveyStaticDataModel({
   required int id,
   required String text,
  }) = _SurveyStaticDataModel;

  factory SurveyStaticDataModel.fromJson(Map<String, dynamic> json) => _$SurveyStaticDataModelFromJson(json);
}

@freezed
class DangerWithCategoryModel with _$DangerWithCategoryModel {
  const factory DangerWithCategoryModel({
   required String dangerCategory,
   required int dangerCategoryId,
   required List<SurveyStaticDataModel> dangerModels,
  }) = _DangerWithCategoryModel;

  factory DangerWithCategoryModel.fromJson(Map<String, dynamic> json) => _$DangerWithCategoryModelFromJson(json);
}

@freezed
class MeasureControlWithDangerModel with _$MeasureControlWithDangerModel {
  const factory MeasureControlWithDangerModel({
   required int dangerId,
   required String dangerName,
   required List<SurveyStaticDataModel> dangerControlModels,
  }) = _MeasureControlWithDangerModel;

  factory MeasureControlWithDangerModel.fromJson(Map<String, dynamic> json) => _$MeasureControlWithDangerModelFromJson(json);
}
