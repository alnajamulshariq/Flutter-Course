import 'package:flutter/material.dart';
import 'package:ses_39_passing_data_from_one_to_another_screen/splash.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PassingData",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: SplashScreen(),
    );
  }
}
