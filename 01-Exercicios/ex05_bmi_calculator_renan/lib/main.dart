import 'package:ex05_bmi_calculator_renan/input_info_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMIApp());

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputInfoPage(),
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF00D492),
        textTheme: TextTheme(
          body1: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500
          )
        )
      ),
    );
  }
}

