import 'dart:async';

import 'package:calculator_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
          'CALCULATOR',
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
        )),
      ),
    );
  }
}
