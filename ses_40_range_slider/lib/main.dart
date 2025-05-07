import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Range Slider',
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
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Range Slider"), centerTitle: true),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.lightGreenAccent,
          min: 0,
          max: 100,
          onChanged: (newValue) {
            setState(() {
              values = newValue;
              print('${newValue.start} and ${newValue.end}');
            });
          },
        ),
      ),
    );
  }
}
