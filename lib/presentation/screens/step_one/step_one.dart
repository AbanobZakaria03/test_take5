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
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = StepOneCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
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

                  // ...cubit.dangerWidgets

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
                       ... cubit.dangers.map((e) =>  DataRow(
                          cells: <DataCell>[
                            DataCell(Text('${e.id}')),
                            DataCell(Text('${e.text}')),
                            DataCell(Column(children:
                              e.controls.map((e) => Text(e.text)).toList()
                            ,)
                            ),
                            DataCell(IconButton(
                              onPressed: (){
                                cubit.removeDanger(e);
                              },
                              icon: Icon(Icons.delete_forever),
                            )),
                          ],
                        )).toList(),
                      ],
                    ),
                  ),
                ),
              ),
                  // ...List.generate(c, (index) => const Danger(),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
