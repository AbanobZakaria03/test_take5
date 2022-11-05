import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_take5/data/datasources/local_data_source.dart';

import '../../../core/utils/services/loaction_service.dart';
import '../../../injection_container.dart';

import '../../../logic/trip_cubit/trip_cubit.dart';
import '../../../logic/trip_cubit/trip_states.dart';
import '../../utils/helpers/helpers.dart';
import '../step_one/step_one.dart';

class TripScreen extends StatefulWidget {
  static const routeName = 'TripScreen';

  const TripScreen({Key? key}) : super(key: key);

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  Position? p;
  double? d;

  start() async {
    var loc = LocationService();
    p = await loc.getCurrentLocation();
    print(p);

    Position pp =
        Position.fromMap({'latitude': 27.1790981, 'longitude': 31.0220375});
    d = loc.getDistance(p!, pp);
    print(d);
    setState(() {});
    loc.subscribeEvent((p) {
      this.p = p;
      Position pp =
          Position.fromMap({'latitude': 27.1790981, 'longitude': 31.0220375});
      d = loc.getDistance(p, pp);
      print(d);
      setState(() {});
    }, 100);
  }

  @override
  void initState() {
    saveLastRoute(TripScreen.routeName);
    start();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TripCubit>(),
      child: BlocConsumer<TripCubit, TripStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TripCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text(p.toString() ?? ''),
                  Text('${d?.toInt()} m' ?? ''),
                  if (d != null && d! < 1000)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, StepOneScreen.routeName, (route) => false);
                      },
                      child: Text('take5'),
                    ),
                  ElevatedButton(
                    onPressed: () {
                      LocalDataSource localDataSource = sl<LocalDataSource>();
                     print( localDataSource.getCachedTakeFiveSurvey()?.stepTwoQuestions.length);
                    },
                    child: Text('printSurvey'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
