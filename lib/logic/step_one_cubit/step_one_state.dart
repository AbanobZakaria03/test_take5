part of 'step_one_cubit.dart';

@immutable
abstract class StepOneState {}

class StepOneInitial extends StepOneState {}

class StepOneAddDanger extends StepOneState {}

class StepOneRemoveDanger extends StepOneState {}

class StepOneGetQuestionsLoading extends StepOneState {}
class StepOneGetQuestionsSuccess extends StepOneState {}

class StepOneGetQuestionsFail extends StepOneState{
  final String message;
  StepOneGetQuestionsFail(this.message);
}