import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';

import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final apiKey = 'd09ac64575dd6cedf315b0d9d202cca3';
  double longitude;
  double latitude;

  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getUserLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper();
    var weatherData = networkHelper.getWeather(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
