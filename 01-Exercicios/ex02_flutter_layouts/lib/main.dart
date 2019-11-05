import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(width: 100, color: Colors.red),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(width: 100,height: 100.0, color: Colors.yellow),
              Container(width: 100,height: 100.0, color: Colors.yellow[600])
            ],
          ),
          Container(width: 100, color: Colors.blue[300])
        ],
      ),
    ),
  ),
));
