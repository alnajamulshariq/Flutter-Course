import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button And Its Types"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text("Text Button"),
                onPressed: () {
                  print("Text Button Pressed");
                },
                onLongPress: () {
                  print("Text Button Long Pressed");
                },
              ),
              SizedBox(height: 10),

              ElevatedButton(
                child: Text("Elevated Button"),
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                onLongPress: () {
                  print("Elevated Button Long Pressed");
                },
              ),
              SizedBox(height: 10),

              OutlinedButton(
                child: Text("Outlined Button"),
                onPressed: () {
                  print("Outlined Button Pressed");
                },
                onLongPress: () {
                  print("Outlined Button Long Pressed");
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
