import 'package:flutter/material.dart';

import '../../data/models/responses/trip_start_response/trip_start_response.dart';
import '../../data/data.dart';

class Danger extends StatefulWidget {
  const Danger({Key? key}) : super(key: key);

  @override
  _DangerState createState() => _DangerState();
}

class _DangerState extends State<Danger> {
  DangerWithCategoryModel? selectedDangerWithCategoryModel;
  SurveyStaticDataModel? selectedDanger;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<DangerWithCategoryModel>(
              items: dangerWithCategoryModels
                  .map((d) => DropdownMenuItem<DangerWithCategoryModel>(
                child: Text(d.dangerCategory),
                value: d,
              )
              )
                  .toList(),
              onChanged: (d) {
                setState(() {
                  selectedDangerWithCategoryModel=d;
                });
              }),
        ),
        Expanded(
          child: DropdownButtonFormField<SurveyStaticDataModel>(
              items: selectedDangerWithCategoryModel?.dangerModels
                  .map((d) => DropdownMenuItem<SurveyStaticDataModel>(
                child: Text(d.text),
                value: d,
              )
              )
                  .toList(),
              onChanged: (d) {
                setState(() {
                  selectedDanger=d;
                });
              }),
        ),
        IconButton(icon: Icon(Icons.delete_forever),onPressed: (){},)
      ],
    );
  }
}
