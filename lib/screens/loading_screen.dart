import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:simple_weather/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    try {
      Location location = Location();
      await location.getCurrentLocation();
      print(Location().longitude);
      print(Location().latitude);
    } catch (e, s) {
      print(s);
    }
  }

  final url =
      'https://samples.openweathermap.org/data/2.5/forecast?q=M%C3%BCnchen,DE&appid=439d4b804bc8187953eb36d2a8c26a02';
  void getData() async {
    Response response = await get(Uri.parse(url));

    print(response.body);
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
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.all(doubleMargin),
      ),
    );
  }
}
