import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Margin & Padding",
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
        title: Text("Margin & Padding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(21),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("Box 1", style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(21),
            child: Padding(
              padding: const EdgeInsets.only(top: 21, left: 34, bottom: 11),
              child: Text("Box 2", style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}
