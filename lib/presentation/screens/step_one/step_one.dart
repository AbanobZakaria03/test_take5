import 'package:flutter/material.dart';

class StepOneScreen extends StatefulWidget {
  static const routeName = 'StepOneScreen';

  const StepOneScreen({Key? key}) : super(key: key);

  @override
  State<StepOneScreen> createState() => _StepOneScreenState();
}

class _StepOneScreenState extends State<StepOneScreen> {

  bool q1 = true;
  bool q2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Which Operating System are your currently using?'),
          Radio(value: true, groupValue: q1,onChanged: (value){setState(() {
            if(value!=null) q1=value;
          });}),
          Radio(value: false, groupValue: q1,onChanged: (value){setState(() {
            if(value!=null) q1=value;
          });}),

          SizedBox(height: 8),
          const Text('Which Operating System are your currently using?'),
          Radio(value: true, groupValue: q2,onChanged: (value){setState(() {
           if(value!=null) q2=value;
          });}),
          Radio(value: false, groupValue: q2,onChanged: (value){setState(() {
            if(value!=null) q2=value;
          });}),
        ],
      ),
    );
  }
}
