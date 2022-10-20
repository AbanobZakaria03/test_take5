import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../presentation/widgets/danger.dart';

part 'step_one_state.dart';

class StepOneCubit extends Cubit<StepOneState> {
  StepOneCubit() : super(StepOneInitial());

  List<Danger> dangerWidgets = [];

  addDanger(Danger danger){
    dangerWidgets.add(danger);
  }

}
