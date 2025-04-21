import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded Widget",
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
        title: Text("Expanded Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(width: 50, height: 100, color: Colors.amber),
              ),
              Expanded(
                flex: 4,
                child: Container(width: 50, height: 100, color: Colors.cyan),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.lightGreenAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(width: 50, height: 100, color: Colors.orange),
              ),
            ],
          ),
          Column(
            children: [
              Container(height: 100, color: Colors.brown),
              Container(height: 100, color: Colors.greenAccent),
              Container(height: 100, color: Colors.red),
              Container(height: 100, color: Colors.blueGrey),
            ],
          ),
        ],
      ),
    );
  }
}
