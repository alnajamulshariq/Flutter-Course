import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ScrollView Widget'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.amber,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.redAccent,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.lime,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.cyan,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.purple,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.pinkAccent,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.brown,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.blueGrey,
                          margin: EdgeInsets.only(right: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.black,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.brown,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.cyan,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.deepOrange,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.indigo,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.lightBlue,
                  margin: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
