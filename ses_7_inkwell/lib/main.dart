import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inkwell"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: InkWell(
          onTap: () {
            print("OnTapped On Container");
          },
          onDoubleTap: () {
            print("OnDoubleTapped On Container");
          },
          onLongPress: () {
            print("OnLongPressed On Container");
          },
          child: Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: InkWell(
                onTap: () {
                  print("OnTap On Text Widget");
                },
                child: Center(child: Text("This is Text Widget")),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
