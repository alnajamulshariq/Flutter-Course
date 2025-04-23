import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.amber,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.blue,
              width: 1.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Shariq Najam"),
          ),
        ),
      ),
    );
  }
}
