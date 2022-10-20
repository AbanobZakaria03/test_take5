import 'models/responses/trip_start_response/trip_start_response.dart';

List<DangerWithCategoryModel> dangerWithCategoryModels = [
  const DangerWithCategoryModel(
      dangerCategory: 'الموقع',
      dangerCategoryId: 1,
      dangerModels: [
        SurveyStaticDataModel(id: 1, text: 'الاماكن الضيقة'),
        SurveyStaticDataModel(id: 2, text: 'استخدام الالات الحادة'),
      ]),
  const DangerWithCategoryModel(
      dangerCategory: 'الصحة',
      dangerCategoryId: 2,
      dangerModels: [
        SurveyStaticDataModel(id: 3, text: 'تناول احمال لاسفل'),
      ]),
  const DangerWithCategoryModel(
      dangerCategory: 'اصطدام وانحشار',
      dangerCategoryId: 3,
      dangerModels: [
        SurveyStaticDataModel(id: 4, text: 'حمل معلق'),
        SurveyStaticDataModel(id: 5, text: 'حائط منخفض'),
        SurveyStaticDataModel(id: 6, text: 'اصطدام'),
      ]),
];