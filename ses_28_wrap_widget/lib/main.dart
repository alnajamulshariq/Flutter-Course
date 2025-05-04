import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wrap Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(width: 100, height: 100, color: Colors.amber),
            Container(width: 100, height: 100, color: Colors.black),
            Container(width: 100, height: 100, color: Colors.blueAccent),
            Container(width: 100, height: 100, color: Colors.blueGrey),
            Container(width: 100, height: 100, color: Colors.brown),
            Container(width: 100, height: 100, color: Colors.cyanAccent),
            Container(width: 100, height: 100, color: Colors.deepOrange),
            Container(width: 100, height: 100, color: Colors.deepPurple),
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
