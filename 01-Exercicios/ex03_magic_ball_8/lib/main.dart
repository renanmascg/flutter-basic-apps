import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MagicBall(),
));

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int ballCard = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25.0
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[700],
      body: Center(
        child: FlatButton(
          onPressed: () {
            
            setState(() {
              ballCard = 1 + Random().nextInt(5);
            });
          },
          padding: EdgeInsets.all(8.0),
          child: Image.asset('images/ball$ballCard.png'),
          color: Colors.blue[700],
        ),
      ),
    );
  }
}