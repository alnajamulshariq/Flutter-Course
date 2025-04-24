import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var arrColors = [
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.blueGrey,
    Colors.brown,
    Colors.deepPurple,
    Colors.green,
    Colors.cyan,
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body:
      // GridView.count
      // GridView.count(
      //   crossAxisCount: 3,
      //   mainAxisSpacing: 11,
      //   crossAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //   ],
      // ),
      //GridView.extent
      // GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //   ],
      // ),
      //GridView.builder
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        ),
        itemBuilder: (context, index) {
          return Container(color: arrColors[index]);
        },
        itemCount: arrColors.length,
      ),
    );
  }
}
