import 'package:flutter/material.dart';

Widget calcButton(String buttonText, Color buttonColor, Color textColor) {
  return Container(
    width: 75,
    height: buttonText == '=' ? 150 : 70,
    padding: const EdgeInsets.all(0),
    child: ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        backgroundColor: buttonColor
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
        ),
      ),
    )
  );
}