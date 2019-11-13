import 'package:ex05_bmi_calculator_renan/constants.dart';
import 'package:flutter/material.dart';

class IconNamedButton extends StatelessWidget {

  final IconData icon;
  final String buttonText;
  final Color colour;
  final Function onPressed;

  IconNamedButton({ 
    @required this.icon,
    @required this.colour,
    @required this.buttonText,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: colour,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0)
      ),
      constraints: BoxConstraints.tightFor(
        width: 140.0,
        height: 50.0
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
          Text(
            buttonText,
            style: kCardTitleTextStyle,
          )
        ],
      ),
    );
  }
}