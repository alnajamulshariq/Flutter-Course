import 'package:flutter/material.dart';
import 'package:ses_17_styles_and_themes/ui_helper/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styles & Themes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 16),
        ),
      ),
      home: const MyHomePage(title: 'Styles & Themes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "This is Text 1",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text("This is Text2", style: Theme.of(context).textTheme.titleSmall),
          Text(
            "This is Text3",
            style: f21(textColor: Colors.blue, fontweight: FontWeight.bold),
          ),
          Text("This is Text4", style: f18()),
        ],
      ),
    );
  }
}
