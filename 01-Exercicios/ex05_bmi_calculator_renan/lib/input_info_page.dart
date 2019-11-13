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
                Color(0xFF58AEC6),
                Color(0xFF9CE2D6)
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Text(
                  'BMI Calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
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
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MaleFemaleButton(),
                          MaleFemaleButton(),
                        ],
                      )
                    ],
                  ),
                  
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class MaleFemaleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print('clicou no botao');
      },
      fillColor: Color(0xFF47C7F0),
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
            FontAwesomeIcons.mars,
            color: Colors.white,
            size: 30.0,
          ),
          Text(
            'FEMALE',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Poppins',
              color: Colors.white
            ),
          )
        ],
      ),


    );
  }
}