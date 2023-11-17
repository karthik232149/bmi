import 'dart:async';

import 'package:bmi/page1.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
    Duration(seconds: 4),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => BmiCalculator())));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration:BoxDecoration(
          image:DecorationImage(image: AssetImage('images/bmi.png'
          )
        )
        ),
      ),
    );
  }
}
