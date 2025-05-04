import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Constraint Box",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Constraint Box"), centerTitle: true),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 200,
              minHeight: 50,
              minWidth: 100,
            ),
            child: Container(
              child: Text(
                "Iyer, Kinnas Swami Muttas Swami Where The Gopal Iyer, Raja Shekhar Badham Bhatura Where The Gopal Iyer",
                style: TextStyle(fontSize: 21, overflow: TextOverflow.fade),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
