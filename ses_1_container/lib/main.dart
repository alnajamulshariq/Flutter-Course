import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Session 1 Container",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.amberAccent,
            child: Center(
              child: Text(
                "Contanier 1",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
