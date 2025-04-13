import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rows & Columns"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Row1"),
                  Text("Row2"),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      ElevatedButton(onPressed: () {}, child: Text("Click Me")),
                      SizedBox(height: 20),
                      ElevatedButton(onPressed: () {}, child: Text("Click Me")),
                    ],
                  ),
                  Text("Row3"),
                  Text("Row4"),
                  Text("Row5"),
                ],
              ),
              Text("A"),
              Text("B"),
              Text("C"),
              Text("D"),
              Text("E"),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("Click Me")),
            ],
          ),
        ),
      ),
    ),
  );
}
