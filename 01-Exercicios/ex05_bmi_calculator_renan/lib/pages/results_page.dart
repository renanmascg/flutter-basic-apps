import 'package:ex05_bmi_calculator_renan/components/bottom_button.dart';
import 'package:ex05_bmi_calculator_renan/components/icon_named_button.dart';
import 'package:ex05_bmi_calculator_renan/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomButton(
        buttonText: 'Re-calculate',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(40.0),
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
                flex: 1,
                child: Center(
                  child: Text(
                    'GREAT JOB!',
                    style: kResultTextStyle,
                  ),
                )
              ),
              Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage('images/bmi_cool.png'),
                  width: 150,
                  height: 150,
                )
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'YOUR BMI IS GREAT!',
                    style: kResultTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SHARE',
                      style: kResultTextStyle,
                    ),
                    SizedBox(height: 10.0,),
                    ShareButton(
                      buttonText: 'Facebook',
                      icon: FontAwesomeIcons.facebookF,
                      onPress: () {
                        Fluttertoast.showToast(
                          msg: 'Irá compartilhar no Facebook!',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.TOP,
                          backgroundColor: Colors.green[300],
                          textColor: Colors.white,
                          fontSize: 16.0
                        );
                      },
                    ),
                    SizedBox(height: 10.0,),
                    ShareButton(
                      buttonText: 'Instagram',
                      icon: FontAwesomeIcons.instagram,
                      onPress: () {
                        Fluttertoast.showToast(
                          msg: 'Irá compartilhar no Instagram!',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.TOP,
                          backgroundColor: Colors.green[300],
                          textColor: Colors.white,
                          fontSize: 16.0
                        );
                      },
                    ),
                    SizedBox(height: 10.0,),
                    ShareButton(
                      buttonText: 'Twitter',
                      icon: FontAwesomeIcons.twitter,
                      onPress: () {
                        Fluttertoast.showToast(
                          msg: 'Irá compartilhar no twitter!',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.TOP,
                          backgroundColor: Colors.green[300],
                          textColor: Colors.white,
                          fontSize: 16.0
                        );
                      },
                    ),
                  ] ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  
  ShareButton({ 
    @required this.buttonText, 
    @required this.icon, 
    @required this.onPress
  });

  final String buttonText;
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 50.0,
      child: RaisedButton.icon(
        onPressed: onPress,
        icon: Icon(icon),
        label: Text(
          buttonText
        ),
        color: kButtonMaleColour,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)
        ),  
      ),
    );
  }
}