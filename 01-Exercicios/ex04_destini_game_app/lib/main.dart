import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),  
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Story text will go here.',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  'Choice 1',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'Choice 2',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}