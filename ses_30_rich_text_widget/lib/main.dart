import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rich Text Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rich Text Widget"), centerTitle: true),
      body: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.grey, fontSize: 21),
          children: <TextSpan>[
            TextSpan(text: 'Hello '),
            TextSpan(
              text: 'World! ',
              style: TextStyle(
                fontSize: 26,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: 'Welcome to '),
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
