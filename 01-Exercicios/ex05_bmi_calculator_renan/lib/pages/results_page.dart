import 'package:ex05_bmi_calculator_renan/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kDegradeInitialColor,
                kDegradeEndColor
              ]
            )
          ),

        ),
      ),
    );
  }
}