import 'package:clima_app_flutter/screens/location_screen.dart';
import 'package:clima_app_flutter/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:clima_app_flutter/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '0b4d8477e565b10d7361e9aaf379b382';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();

    getLocationData();

  }

  void getLocationData() async {
    
    Location location = Location();

    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(url:'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    dynamic weatherData = await networkHelper.getData();

    Navigator.push(context, 
    MaterialPageRoute( 
      builder: (context) =>  LocationScreen()
    ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
