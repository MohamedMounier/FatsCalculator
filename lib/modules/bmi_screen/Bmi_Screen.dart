import 'file:///D:/Flutter%20Course/projectsss/UdemyCourse/Bmi%20Calculator/bmi_app/lib/modules/bmi_result/Bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale ;
  double height = 120.0;
  int age=20;
  int weight=50;
  /*
  Result(){
  var result= weight/pow(height/100, 2);
  print(result);
  return result;
}
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(title: Text('Bmi Application'),backgroundColor: Colors.transparent,),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale==true ? Colors.blue:Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.face,size: 70,),
                            SizedBox(height: 15,),
                            Text('male',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale==true?Colors.grey:Colors.blue
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.face,size: 70,),
                            SizedBox(height: 15,),
                            Text('female',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                      Text('CM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value1){
                        print(value1.round());
                        setState(() {
                          height=value1;
                        });
                      })
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('$weight',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weightee-',
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                heroTag: 'weight add',
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text('$age',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              FloatingActionButton(
                                heroTag: 'age--',
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                  print(age);
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                heroTag: "age+",
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });

                                },
                                child: Icon(Icons.add),
                                mini: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            decoration: BoxDecoration(
              color:Colors.blue
            ),
            width: double.infinity,
            child: MaterialButton(onPressed: (){
             // Result();
              double result=weight/pow(height/100, 2);
              print(result.round());
             // Navigator.pushNamed(context, '/Bmi_Result');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiResultScreen(age2: age, isMale2: isMale, result2: result,weight2: weight,)));
              },
            child: Text('Calculate',style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
