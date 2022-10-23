import 'models/responses/trip_start_response/trip_start_response.dart';

List<DangerControlsWithCategoryModel> dangerControlsWithCategoryModels = [
  const DangerControlsWithCategoryModel(
      dangerCategory: 'الموقع',
      dangerCategoryId: 1,
      dangerModels: [
        DangerModel(id: 1, text: 'الاماكن الضيقة', controls: []),
        DangerModel(id: 2, text: 'استخدام الالات الحادة', controls: []),
      ]),
  const DangerControlsWithCategoryModel(
      dangerCategory: 'الصحة',
      dangerCategoryId: 2,
      dangerModels: [
        DangerModel(id: 3, text: 'تناول احمال لاسفل', controls: [
          SurveyStaticDataModel(id: 5, text: 'استخدام مهمات الوقاية الشخصية'),
          SurveyStaticDataModel(id: 6, text: 'التعامل مع الخطر'),
        ]),
      ]),
  const DangerControlsWithCategoryModel(
      dangerCategory: 'اصطدام وانحشار',
      dangerCategoryId: 3,
      dangerModels: [
        DangerModel(id: 4, text: 'حمل معلق', controls: [
          SurveyStaticDataModel(id: 7, text: 'التواصل مع المشرف'),
          SurveyStaticDataModel(id: 8, text: 'عزل الخطر'),
          SurveyStaticDataModel(id: 9, text: 'التواصل مع صاحب الموقع'),
          SurveyStaticDataModel(id: 10, text: 'تجنب الخطر'),
        ]),
        DangerModel(id: 5, text: 'حائط منخفض', controls: []),
        DangerModel(id: 6, text: 'اصطدام', controls: []),
      ]),
];
