import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<String> buttons = [
    'C','DEL','%','/',
    '9','8','7','x',
    '6','5','4','-',
    'C','DEL','%','/',
    '0','.','ANS','=',

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body:Column(
        children: [
          Expanded(
            child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                itemBuilder: (BuildContext context, int index){
                  return MyButton(
                    buttonText: buttons[index],
                    color: Colors.deepPurple,
                    textcolor: Colors.white,
                  );
                  },)
                ),
              ),
        ],),),


    );
  
  }
}