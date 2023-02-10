import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var _width = 100.0;
  var _height = 100.0;

  @override
  void initState() {
    super.initState();

    _width = double.infinity;
    _height = double.infinity;

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    }); //timer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      width: _width,
      height: _height,
      duration: Duration(seconds: 3),
      color: Colors.blue,
      child: Center(
          child: Text(
        "BMI",
        style: TextStyle(
            fontSize: 44, fontWeight: FontWeight.w800, color: Colors.white),
      )),
    ));
  }
}
