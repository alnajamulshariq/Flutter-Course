import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3d List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var arrNames = [
    'Shariq',
    'Abdullah',
    'Bilal',
    'Zubair',
    'Faizan',
    'Yasir',
    'Nauman',
    'Abrar',
    'Samad',
    'Moiz',
    'Hamza',
    'Ahsan',
    'Asghar',
    'Hassan',
    'Luqman',
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListWheel ScrollView"), centerTitle: true),
      body: ListWheelScrollView(
        itemExtent: 200,
        children:
            arrNames
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Center(
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
