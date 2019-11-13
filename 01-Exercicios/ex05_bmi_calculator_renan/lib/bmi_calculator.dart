import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMICalculator {

  BMICalculator({ this.height, this.weight}) {
    _bmi = weight / pow(height /100, 2);
  }

  int weight;
  int height;

  double _bmi;

  String getResult() {
    if (_bmi >= 25) {
      return 'REDUCE THIS, PLZ!';
    } else if ( _bmi > 18.5) {
      return 'GREAT JOB!';
    } else {
      return 'EAT A BIT MORE!';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'YOUR BMI IS NOT GREAT!';
    } else if ( _bmi > 18.5) {
      return 'YOUR BMI IS GREAT';
    } else {
      return 'YOUR BMI IS LOW!';
    }
  }

  AssetImage getImage() {
    if (_bmi >= 25) {
      return AssetImage('images/bmi_bad.png');
    } else if ( _bmi > 18.5) {
      return AssetImage('images/bmi_cool.png');
    } else {
      return AssetImage('images/bmi_ok.png');
    }
  }

}