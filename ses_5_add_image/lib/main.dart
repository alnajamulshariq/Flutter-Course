import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Image In Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 2),
              Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/flutter.jpg'),
              ),
              SizedBox(height: 2),
            ],
          ),
        ),
      ),
    ),
  );
}
