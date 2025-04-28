import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spliiting App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splitting The App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [firstSec(), secSec(), thirdSec(), fourthSec()]),
    );
  }
}

class firstSec extends StatelessWidget {
  const firstSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(backgroundColor: Colors.indigoAccent),
                ),
              ),
          itemCount: 100,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class secSec extends StatelessWidget {
  const secSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blueAccent,
        child: ListView.builder(
          itemBuilder:
              (context, index) => ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green),
                title: Text("Name"),
                subtitle: Text("Mob No"),
                trailing: Icon(Icons.delete, color: Colors.red),
              ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class thirdSec extends StatelessWidget {
  const thirdSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blue,
                  ),
                ),
              ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class fourthSec extends StatelessWidget {
  const fourthSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(10, (index) {
            return Container(width: 30, height: 30, color: Colors.amber);
          }),
        ),
      ),
    );
  }
}
