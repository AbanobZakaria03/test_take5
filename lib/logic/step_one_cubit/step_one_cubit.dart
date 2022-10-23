import 'package:bloc/bloc.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../presentation/widgets/danger.dart';

part 'step_one_state.dart';

class StepOneCubit extends Cubit<StepOneState> {
  StepOneCubit() : super(StepOneInitial());
  static StepOneCubit get(context) => BlocProvider.of(context);
  List<Danger> dangerWidgets = [];
  List<DangerWithCategoryModel?>selected=[];
  addDanger(Danger danger){
    dangerWidgets.add(danger);
    //selected.add(null);
    emit(StepOneAddDanger());
  }
  deleteDanger(int index){
    dangerWidgets.removeAt(index);
    emit(StepOneDeleteDanger());
  }
  changeSelectedDanger(int index,selectedItem){
    selected[index]=selectedItem;
    emit(StepOneChangeSelectedDanger());
  }
}
