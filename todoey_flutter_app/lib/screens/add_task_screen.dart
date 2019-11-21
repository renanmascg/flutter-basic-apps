import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Theme(
                data: ThemeData(
                  primaryColor: Colors.lightBlueAccent,
                  cursorColor: Colors.lightBlueAccent,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18.0

                  ),
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, ),
                onPressed: () {},
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
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