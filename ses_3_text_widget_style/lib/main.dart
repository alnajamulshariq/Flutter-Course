import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text Widget & Style",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Text(
          "This is Flutter App Font Style",
          style: TextStyle(
            fontSize: 25,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.amberAccent,
          ),
        ),
      ),
    ),
  );
}
