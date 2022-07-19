import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textcolor;
  final buttonText;
  final buttonTapped;
  

  MyButton({this.color, this.textcolor, this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: buttonTapped,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(color: textcolor, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
