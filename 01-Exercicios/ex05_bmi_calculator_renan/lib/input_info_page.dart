import 'package:ex05_bmi_calculator_renan/components/icon_named_button.dart';
import 'package:ex05_bmi_calculator_renan/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputInfoPage extends StatefulWidget {
  @override
  _InputInfoPageState createState() => _InputInfoPageState();
}

class _InputInfoPageState extends State<InputInfoPage> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    'BMI Calculator',
                    style: kTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: kCardTitleTextStyle,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconNamedButton(
                            buttonText: 'MALE',
                            colour: kButtonMaleColour,
                            icon: FontAwesomeIcons.mars,
                            onPressed: () {
                              print('apertou o botao de male!');
                            },
                          ),
                          IconNamedButton(
                            buttonText: 'FEMALE',
                            colour: kButtonFemaleColour,
                            icon: FontAwesomeIcons.venus,
                            onPressed: () {
                              print('apertou o botao de female!');
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  
                ),
              ),
              Expanded(
                child: Column(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

