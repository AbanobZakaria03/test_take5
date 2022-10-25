import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/data.dart';
import '../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../presentation/widgets/danger.dart';

part 'step_one_state.dart';

class StepOneCubit extends Cubit<StepOneState> {
  static StepOneCubit get(context) => BlocProvider.of(context);

  StepOneCubit() : super(StepOneInitial());


  List<DangerControlsWithCategoryModel> dangerControlsWithCategory = List.castFrom(dangerControlsWithCategoryModels);

  DangerControlsWithCategoryModel? selectedCategory;
  DangerModel? selectedDanger;
  List<SurveyStaticDataModel>? selectedControls;

  //view table
  List<DangerModel> dangers=[];


  void onChangeSelectedCategory(DangerControlsWithCategoryModel? newCategory) {
    selectedDanger=null;
    selectedControls = null;
    selectedCategory = newCategory;
    emit(StepOneAddDanger());
  }
  void onChangeSelectedDanger(DangerModel? newDanger) {
    selectedControls=null;
    selectedDanger=newDanger;
    emit(StepOneAddDanger());
  }
  void onSelectControls(List<SurveyStaticDataModel> controls) {
    selectedControls=controls;
    print(controls);
    emit(StepOneAddDanger());
  }



  void addDanger() {
    if(selectedControls==null){
      return;
    }

    DangerModel dangerModel = DangerModel(id: selectedDanger!.id, text: selectedDanger!.text, controls: selectedControls!);
    dangers.add(dangerModel);

    selectedCategory=null;
    selectedDanger=null;
    selectedControls = null;
    emit(StepOneAddDanger());
  }

  void removeDanger(DangerModel danger) {
    dangers.remove(danger);
    emit(StepOneRemoveDanger());
  }

  void printSelectedDangers(){
  }

}