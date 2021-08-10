import 'file:///D:/Flutter%20Course/projectsss/UdemyCourse/Bmi%20Calculator/bmi_app/lib/modules/bmi_screen/Bmi_Screen.dart';
import 'file:///D:/Flutter%20Course/projectsss/UdemyCourse/Bmi%20Calculator/bmi_app/lib/modules/bmi_result/Bmi_result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: '/',
      routes: {
        '/': (context) => BmiScreen(),
      //  '/Bmi_Result':(context)=>BmiResultScreen()
      },
    );
  }
}
