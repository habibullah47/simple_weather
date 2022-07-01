import 'package:flutter/material.dart';
import 'package:simple_weather/services/location.dart';

const apiKey = '7387055727a31f77a067380e1dba9fe1';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    longitude = Location().longitude;
    latitude = Location().latitude;

    //NetworkHelper networkHelper = NetworkHelper(
    //   url:
    //        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    //  var weatherData = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    double doubleMargin;
    String marginSize = '30';
    try {
      doubleMargin = double.parse(marginSize);
    } catch (e) {
      print(e);
      doubleMargin = double.parse(marginSize);
    }

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          margin: EdgeInsets.all(doubleMargin),
        ),
      ),
    );
  }
}
