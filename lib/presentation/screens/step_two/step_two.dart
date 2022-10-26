import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasources/local_data_source.dart';
import '../../../data/models/requests/destination_arrived_request/destination_arrived_request.dart';
import '../../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../../data/models/trip/trip.dart';
import '../../../data/repositories/take5_repository.dart';
import '../../../injection_container.dart';
import '../../../logic/step_one_cubit/step_one_cubit.dart';
import '../../../logic/step_two_cubit/step_two_cubit.dart';
import '../../widgets/danger.dart';
import '../../widgets/true_false_question.dart';

class StepTwoScreen extends StatefulWidget {
  static const routeName = 'StepTwoScreen';

  const StepTwoScreen({Key? key}) : super(key: key);

  @override
  State<StepTwoScreen> createState() => _StepTwoScreenState();
}

class _StepTwoScreenState extends State<StepTwoScreen> {
  Map<String, bool> questionAnswer = {};
  Map<String, List<int>> tripDangerMeasureControls = {};

  int c = 1;

  void answerQuestion({required String questionId, required bool value}) {
    questionAnswer[questionId] = value;
    print(questionAnswer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:5>6
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Column(
          children: [

            // ElevatedButton(onPressed: cubit.submitQuestions, child: Text('print')),
            ElevatedButton(
              onPressed: () {
                // Take5Repository repo = sl<Take5Repository>();
                // repo.getCachedTakeFiveSurvey().fold((l) => null, (r) => print(r!.stepTwoQuestions.length));
              },
              child: Text('printSurvey'),
            ),

          ],
        )
    );
  }
}
