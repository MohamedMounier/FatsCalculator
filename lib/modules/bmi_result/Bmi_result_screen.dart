import 'dart:math';

import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

   int age2;
   int weight2;
   bool isMale2;
   double result2;
  BmiResultScreen({
    @required int age2,
   @required this.isMale2,
    @required   this.result2,
    this.weight2
}){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bmi result'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender is : ${isMale2==true?'Male':'Female'}',
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text('Result is : ${result2.round()}',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text('Age is : $age2',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text('weight is  : $weight2',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
