import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Circular Avatar",
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
        title: Text("Circular Avatar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/flutter.jpg"),
            backgroundColor: Colors.amber,
            radius: 100,
          ),
          CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              child: Column(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Text("Shariq"),
                ],
              ),
            ),
            backgroundColor: Colors.green,
            maxRadius: 60,
          ),
        ],
      ),
    );
  }
}
