import 'package:flutter/material.dart';
import 'package:ses_27_creating_custom_widget/widgets/rounded_buttons.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Create Custom Widget",
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
        title: Text("Create Custom Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: "Play",
                icon: Icon(Icons.play_arrow, color: Colors.white),
                textStyle: TextStyle(fontSize: 16, color: Colors.white),
                callback: () {
                  print("Hey Shariq");
                },
              ),
            ),

            Container(height: 11),

            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: "Play",
                textStyle: TextStyle(fontSize: 16, color: Colors.white),
                bgColor: Colors.orange,
                callback: () {
                  print("Hey Shariq");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
