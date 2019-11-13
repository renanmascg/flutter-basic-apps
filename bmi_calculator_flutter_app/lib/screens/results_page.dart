import 'package:bmi_calculator_flutter_app/components/bottom_button.dart';
import 'package:bmi_calculator_flutter_app/components/reusable_card.dart';
import 'package:bmi_calculator_flutter_app/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  double BMI = 26.7; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Results',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kResultTextStyle
                  ),
                  Text(
                    BMI.toString(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to exercise more',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}