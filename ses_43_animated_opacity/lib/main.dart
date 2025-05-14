import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animated Opacity",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  var myOpacity = 1.0;
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var myOpacity = 1.0;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Opacity"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 4),
              curve: Curves.elasticOut,
              child: Container(width: 200, height: 100, color: Colors.amber),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    myOpacity = 0.0;
                    flag = false;
                  } else {
                    myOpacity = 1.0;
                    flag = true;
                  }
                });
              },
              child: Text("Close"),
            ),
          ],
        ),
      ),
    );
  }
}
