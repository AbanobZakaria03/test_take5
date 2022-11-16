import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_take5/core/constants/app_colors.dart';
import 'package:test_take5/logic/home_cubit/home_cubit.dart';
import 'package:test_take5/presentation/screens/home/widgets/trip_card.dart';
import 'package:test_take5/presentation/screens/trip/trip.dart';
import 'package:test_take5/presentation/utils/dialogs/message_dialog.dart';
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
    super.initState();
    saveLastRoute(HomeScreen.routeName);
    HomeCubit.get(context).getPendingTrip();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        if (state is HomeStartTripLoading ||
            state is HomeCheckTripStatusLoading) {
          loadingAlertDialog(context);
        }
        if (state is HomeStartTripSuccess) {
          Navigator.pop(context);
          // Navigator.pushNamedAndRemoveUntil(
          //     context, TripScreen.routeName, (route) => false);
        }
        if (state is HomeCheckTripStatusSuccess) {
          Navigator.pop(context);
          showMessageDialog(
              context: context, isSucceeded: true, message: state.status);
          // Navigator.pushNamedAndRemoveUntil(
          //     context, TripScreen.routeName, (route) => false);
        }
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'الرحلات', style: TextStyle(color: AppColors.redColor),),
            backgroundColor: Colors.white,
            centerTitle: true,
            actions: [
              TextButton(
                  onPressed: () => logOut(context),
                  child: Text(
                    'logout',
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () => cubit.checkTripStatus(),
                  child: Text(
                    'change',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
          body: Column(
            children: [
              if(state != HomeGetPendingTripLoading() && cubit.trip != null)
                TripCard(trip: cubit.trip!),

            ],
          ),
        );
      },
    );
  }
}
