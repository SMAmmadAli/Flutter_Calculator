import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final color;
 final textcolor;
 final buttonText;

 MyButton({this.color, this.textcolor, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),      
          child: Container(
            color: color,
            child: Center(
              child: 
              Text(buttonText,
              style: TextStyle(color: textcolor),
              ),),
            
          ),
        ),
      ),
    );
  }
}