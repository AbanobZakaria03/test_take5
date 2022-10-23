import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test_take5/data/models/user/user.dart';
import '../../../data/datasources/local_data_source.dart';
import '../../../injection_container.dart';
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
  void dispose()
  {
    //Hive.close();// close all boxes
    Hive.box('user').close();//close special vox
    super.dispose();

  }
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
              onPressed: () async{
                LocalDataSource localDataSource=sl<LocalDataSource>();
                //act
                await localDataSource.cacheUser(User(userId: '1', driverId: 1, driverName:'asmaa', userUnSeenNotificationCount: 1));
                localDataSource.getCachedUser();
                //StepOneCubit.get(context).addDanger(Danger(ind:StepOneCubit.get(context).dangerWidgets.length));
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
              //...List.generate(1, (index) => const Danger(),),
                ...List.generate(StepOneCubit.get(context).dangerWidgets.length, (index) => Danger(ind:index),)
              ],
            ),
          );
        },
      ),
    );
  }
}
