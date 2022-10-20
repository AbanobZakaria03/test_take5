import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../../logic/step_one_cubit/step_one_cubit.dart';
import '../../widgets/danger.dart';

class StepOneScreen extends StatefulWidget {
  static const routeName = 'StepOneScreen';

  const StepOneScreen({Key? key}) : super(key: key);

  @override
  State<StepOneScreen> createState() => _StepOneScreenState();
}

class _StepOneScreenState extends State<StepOneScreen> {

  Map<String, bool> questionAnswer = {};
  Map<String, List<int>> tripDangerMeasureControls = {};

  int c = 1;

  void answerQuestion({required String questionId, required bool value}) {
    questionAnswer[questionId] = value;
    print(questionAnswer);
  }

  void addTripDanger() {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StepOneCubit(),
      child: BlocConsumer<StepOneCubit, StepOneState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  c++;
                });
              },
            ),
            appBar: AppBar(),
            body: Column(
              children: [
                const Text('Which Operating System are your currently using?'),
                Radio(
                    value: true,
                    groupValue: questionAnswer['1'],
                    onChanged: (value) {
                      setState(() {
                        if (value != null)
                          answerQuestion(questionId: '1', value: value);
                      });
                    }),
                Radio(
                    value: false,
                    groupValue: questionAnswer['1'],
                    onChanged: (value) {
                      setState(() {
                        if (value != null)
                          answerQuestion(questionId: '1', value: value);
                      });
                    }),
                SizedBox(height: 8),

                // ListView.builder(shrinkWrap: true,
                //   itemBuilder: (BuildContext context, int index) {},
                //   itemCount:,
                // ),

                ...List.generate(c, (index) => const Danger(),)
              ],
            ),
          );
        },
      ),
    );
  }
}
