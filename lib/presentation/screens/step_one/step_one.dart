import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../data/datasources/local_data_source.dart';
import '../../../data/models/requests/destination_arrived_request/destination_arrived_request.dart';
import '../../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../../data/models/trip/trip.dart';
import '../../../injection_container.dart';
import '../../../logic/internet/internet_bloc.dart';
import '../../../logic/step_one_cubit/step_one_cubit.dart';
import '../../utils/helpers/helpers.dart';
import '../../widgets/danger.dart';
import '../../widgets/true_false_question.dart';

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
  void initState() {
    saveLastRoute(StepOneScreen.routeName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<StepOneCubit>()..getStepOneQuestions(),
      child: BlocConsumer<StepOneCubit, StepOneState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = StepOneCubit.get(context);
          final _formKey = GlobalKey<FormBuilderState>();
          return Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      state is StepOneGetQuestionsLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  TrueFalseQuestion(
                                questionAnswer: cubit.step1Answers[index],
                              ),
                              itemCount: cubit.step1Answers.length,
                            ),
                      Danger(),

                      // ListView.builder(
                      //   key: GlobalKey(),
                      //   shrinkWrap: true,
                      //   itemBuilder: (BuildContext context, int index) {
                      //
                      //     return Danger(customModel: (cubit.myDangers[index]),index: index,);
                      //   },
                      //   itemCount: cubit.myDangers.length,
                      // ),

                      Container(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              dataRowHeight: 100,
                              columns: <DataColumn>[
                                DataColumn(
                                  label: Text('danger id'),
                                ),
                                DataColumn(
                                  label: Text('danger name'),
                                ),
                                DataColumn(
                                  label: Text('controls'),
                                ),
                                DataColumn(
                                  label: Text('remove'),
                                ),
                              ],
                              rows: <DataRow>[
                                ...cubit.dangers
                                    .map((e) => DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text('${e.id}')),
                                            DataCell(Text('${e.text}')),
                                            DataCell(Column(
                                              children: e.controls
                                                  .map((e) => Text(e.text))
                                                  .toList(),
                                            )),
                                            DataCell(IconButton(
                                              onPressed: () async {
                                                cubit.removeDanger(e);
                                              },
                                              icon: Icon(Icons.delete_forever),
                                            )),
                                          ],
                                        ))
                                    .toList(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // ...List.generate(c, (index) => const Danger(),)
                      BlocListener<InternetBloc, InternetState>(
                        listener: (context, state) {
                          if (state is IsConnectedState) {
                            if (state.isNetworkAvailable) {
                              cubit.submitAnswers();
                            }
                          }
                        },
                        child: ElevatedButton(
                            onPressed: () {
                              //_formKey.currentState?.validate()==true
                              if (true) {
                                InternetBloc.get(context)
                                    .add(CheckNetworkEvent());
                              }
                            },
                            child: Text('print')),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
