import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_take5/logic/home_cubit/home_cubit.dart';
import 'package:test_take5/presentation/screens/home/widgets/trip_card.dart';
import 'package:test_take5/presentation/screens/trip/trip.dart';
import 'package:test_take5/presentation/utils/helpers/helpers.dart';

import '../../../injection_container.dart';
import '../../../logic/home_cubit/home_states.dart';
import '../../utils/dialogs/loading_dialog.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    saveLastRoute(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCubit>()..getPendingTrip(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          if (state is HomeStartTripLoading) {
            loadingAlertDialog(context);
          }
          if (state is HomeStartTripSuccess) {
            Navigator.pop(context);
            // Navigator.pushNamedAndRemoveUntil(
            //     context, TripScreen.routeName, (route) => false);
          }
        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              actions: [
                TextButton(
                    onPressed: () => logOut(context),
                    child: Text(
                      'logout',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            body: Column(
              children: [
                if(state!=HomeGetPendingTripLoading()&&cubit.trip!=null)
                  TripCard(trip: cubit.trip!),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      cubit.startTrip();
                      Navigator.pushNamed(context, TripScreen.routeName);
                    },
                    child: const Text('start'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
