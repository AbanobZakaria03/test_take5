import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

import '../../../../data/models/trip/trip.dart';
import '../../../../logic/home_cubit/home_cubit.dart';
import '../../trip/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;
  const TripCard({Key? key,  required this.trip}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
        child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(width: 5.0,
                    color:Color.fromRGBO(0, 145, 159 , 1.0)
                ),
              ),
            ),
            child: Column(
                children: [
                  ListTile(
                    title: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(trip.driverName?? '', style: TextStyle(fontSize: 18),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                              flex: 1,
                              child:   Text('(${trip.tripStatus ?? ''})', style: TextStyle(
                                  
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                              ),
                                maxLines: 2,)
                          ),
                        ]
                    ),
                    subtitle:  Row(
                        children: <Widget>[
                          Text( ' رقم :', style: TextStyle(
                           ),),
                          SizedBox(width: 10.0,),
                          Text('(${trip.tripNumber ?? ''})',
                            
                          ),
                        ]),
                    trailing: Icon(Icons.visibility,color: Colors.green  ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Expanded(
                                child: Row (
                                  children: [
                                    Icon(Icons.gps_fixed, color: Theme.of(context).primaryColor,),
                                    SizedBox(width: 10.0,),
                                    Expanded(
                                      child: Text(trip.jobsiteName ?? '',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row (
                                  children: [
                                    Icon(Icons.pin_drop,
                                      color:  Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      child: Text(trip.jobsiteName ?? '',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black54
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ]
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text( ' تاريخ الاستلام',
                                      style: TextStyle(
                                        
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,)
                                  ),
                                  Text(DateTime.now().year.toString()?? '',
                                      style: TextStyle(
                                        
                                        fontSize: 11.0,
                                        color:Colors.black45,
                                        fontWeight: FontWeight.w600,
                                      )
                                  )

                                ],
                              ),
                            ),
                            Expanded(
                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text( ' تاريخ التوصيل',
                                        style: TextStyle(
                                          
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,)
                                    ),
                                    Text(DateTime.now().year.toString()?? '',
                                        style: TextStyle(
                                          
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w600,
                                          color:Colors.black45,)
                                    ),
                                  ],
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: (){
                              HomeCubit.get(context).startTrip();
                              final service = FlutterBackgroundService();
                              service.startService();
                              Navigator.pushReplacementNamed(context, TripScreen.routeName);
                            },
                            child: const Text('start'),
                          ),
                        ),
                      ],
                    ),


                  ),
                ])
        )
    );
    // return Card(
    //   elevation: 5,
    //   borderOnForeground: true,
    //   child: Container(
    //     padding: EdgeInsets.all(10),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.end,
    //       children: <Widget>[
    //         Container(
    //             height: 70,
    //             padding: EdgeInsets.all(10.0),
    //             color: Theme.of(context).primaryColor,
    //             child: Center(
    //                 child: Text(
    //                     "${trip.driverName} , requist: ${trip.tripNumber}, ship:${trip.truckNumber}",
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.w700,
    //                       color: Colors.white,
    //                     )))),
    //         Container(
    //             height: 40,
    //             padding: EdgeInsets.all(10.0),
    //             child: Center(child: Text('بيانات موقع الاستلام'))),
    //         Container(
    //             height: 60,
    //             child: Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   child: Text(trip.jobsiteName ?? '',
    //                       style: TextStyle(
    //                           fontSize: 18,
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                   ),
    //                 ),
    //                 OutlinedButton(
    //                   child: Row(
    //                     children: [
    //                       Icon(
    //                         Icons.phone,
    //                         color: Colors.green,
    //                       ),
    //                       Text(
    //                         trip.driverNumber.toString() ?? '',
    //                         style: TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   onPressed: (){},
    //                 ),
    //               ],
    //             )),
    //
    //       ],
    //     ),
    //   ),
    // );
  }
}
