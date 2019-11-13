import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({ @required this.buttonText, @required this.onTap });

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 80.0,
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xFF465263),
              fontSize: 30.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}