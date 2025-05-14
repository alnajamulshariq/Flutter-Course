import 'package:flutter/material.dart';
import 'package:ses_45_hero_animation/detail_page.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero"), centerTitle: true),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage()),
              );
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'assets/images/flutter.jpg',
                height: 50,
                width: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
