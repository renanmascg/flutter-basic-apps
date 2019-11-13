import 'package:flutter/material.dart';

class InputInfoPage extends StatefulWidget {
  @override
  _InputInfoPageState createState() => _InputInfoPageState();
}

class _InputInfoPageState extends State<InputInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}