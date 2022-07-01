import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({this.locationWeather});
  final locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    super.initState();
    print(widget.locationWeather);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          color: Colors.greenAccent,
          child: Text('Hellow haZa'),
        ),
      ),
    );
  }
}
