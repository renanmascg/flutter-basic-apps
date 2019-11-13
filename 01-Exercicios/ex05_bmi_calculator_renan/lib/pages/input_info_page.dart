import 'package:ex05_bmi_calculator_renan/components/bottom_button.dart';
import 'package:ex05_bmi_calculator_renan/components/icon_named_button.dart';
import 'package:ex05_bmi_calculator_renan/components/slider_custom.dart';
import 'package:ex05_bmi_calculator_renan/constants.dart';
import 'package:ex05_bmi_calculator_renan/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female
}

class InputInfoPage extends StatefulWidget {
  @override
  _InputInfoPageState createState() => _InputInfoPageState();
}

class _InputInfoPageState extends State<InputInfoPage> {

  Gender genderSelected;
  int age = 20;
  int height = 120;
  int weight = 60;

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
                  padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 0.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconNamedButton(
                            buttonText: 'MALE',
                            colour: genderSelected == Gender.male ? kButtonMaleColour : kButtonNotSelected, 
                            icon: FontAwesomeIcons.mars,
                            onPressed: () {
                              setState(() {
                                genderSelected = Gender.male;
                              });
                            },
                          ),
                          IconNamedButton(
                            buttonText: 'FEMALE',
                            colour: genderSelected == Gender.female ? kButtonFemaleColour : kButtonNotSelected,
                            icon: FontAwesomeIcons.venus,
                            onPressed: () {
                              setState(() {
                                genderSelected = Gender.female;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'AGE',
                          style: kCardTitleTextStyle,
                        ),
                      SliderCustom(
                        label: age.toString(),
                        min: 0.0,
                        max: 100.0,
                        value: age.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            age = newValue.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'HEIGHT',
                          style: kCardTitleTextStyle,
                        ),
                      SliderCustom(
                        label: height.toString(),
                        min: 100.0,
                        max: 220.0,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'WEIGHT',
                          style: kCardTitleTextStyle,
                        ),
                      SliderCustom(
                        label: weight.toString(),
                        min: 20.0,
                        max: 130.0,
                        value: weight.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            weight = newValue.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttonText: 'CALCULATE',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage()
                    )
                  );
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}