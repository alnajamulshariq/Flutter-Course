import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  BoxDecoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foo Animations"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: _height,
              width: _width,
              decoration: myDecor,
              curve: Curves.bounceOut,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag == true) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.orange,
                    );
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.blueGrey,
                    );
                    flag = true;
                  }
                });
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
