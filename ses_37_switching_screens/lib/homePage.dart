import 'package:flutter/material.dart';
import 'package:ses_37_switching_screens/introPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text("Welcome To Home Screen")),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage()),
                  );
                },
                child: Text("Go to IntroPage"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
