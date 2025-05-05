import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ses_38_splash_screen/homePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Text(
            "Hello Shariq",
            style: TextStyle(fontSize: 34, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
