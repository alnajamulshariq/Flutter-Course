import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cross Fade",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFirst = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Cross Fade"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey.shade400,
              ),
              secondChild: Image.asset(
                "assets/images/logo.png",
                width: 200,
                height: 200,
              ),
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState:
                  isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
              onPressed: () {
                reload();
              },
              child: Text("CrossFade"),
            ),
          ],
        ),
      ),
    );
  }
}
