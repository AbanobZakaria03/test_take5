part of 'step_one_cubit.dart';

@immutable
abstract class StepOneState {}

class StepOneInitial extends StepOneState {}
class StepOneDeleteDanger extends StepOneState {}
class StepOneAddDanger extends StepOneState {}
class StepOneChangeSelectedDanger extends StepOneState {}