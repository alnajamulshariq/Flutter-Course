import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Date Format",
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
  var currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date & Time Format Pattern"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Time: ${DateFormat('yMMMMd').format(currentTime)}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentTime = DateTime.now(); // update time
                });
              },
              child: Text("Refresh Time"),
            ),
          ],
        ),
      ),
    );
  }
}
