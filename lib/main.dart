import 'dart:ui';

import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userQuestion = '';
  var userAnswer = '';
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          children: [
            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                  padding: EdgeInsets.all(20.0), 
                  alignment: Alignment.centerLeft,
                  child: Text(userQuestion, style: TextStyle(fontSize: 20),)),
                  Container(
                     padding: EdgeInsets.all(20.0), 
                    alignment: Alignment.centerRight,
                    child: Text(userAnswer,style: TextStyle(fontSize: 20),))
                ],),
            )),
            Expanded(
              flex: 2,
              child: Container(
                  // color: Colors.deepPurple,
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return MyButton(
                            buttonTapped: (){
                              setState(() {
                                userQuestion = '';
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.green,
                            textcolor: Colors.white,
                          );
                        } else if (index == 1) {
                          return MyButton(
                            buttonTapped: (){
                              setState(() {
                                userQuestion = userQuestion.substring(0,userQuestion.length-1);
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red,
                            textcolor: Colors.white,
                          );
                        } else {
                          return MyButton(
                            buttonTapped:(){
                              setState(() {
                                userQuestion += buttons[index];
                              });
                            },
                            buttonText: buttons[index],
                            color: isOperator(buttons[index])
                                ? Colors.deepPurple
                                : Colors.deepPurple[50],
                            textcolor: isOperator(buttons[index])
                                ? Colors.white
                                : Colors.deepPurple,
                          );
                        }
                      })),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
}
