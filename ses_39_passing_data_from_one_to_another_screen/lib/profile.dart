import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  var nameFromHome;
  ProfileScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text("Welcome, $nameFromHome")),
          SizedBox(height: 20),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ),
        ],
      ),
    );
  }
}
