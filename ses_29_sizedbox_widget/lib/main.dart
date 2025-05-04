import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SizedBox Widget",
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
      appBar: AppBar(
        title: Text("SizedBox"),
        centerTitle: true,
        // backgroundColor: Colors.blue,
        // foregroundColor: Colors.white,
      ),

      // SizedBox.expand() mein height and width nahi aye gi yeh parent k maximum ko adopt kare ga
      // body: ConstrainedBox(
      //   constraints: BoxConstraints(
      //     minHeight: 40,
      //     minWidth: 200,
      //     maxHeight: 60,
      //     maxWidth: 300
      //   ),
      //   child: SizedBox.expand(
      //     child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      //   ),
      // ),
      // SizedBox.shrink() mein height and width nahi aye gi yeh parent k minimum ko adopt kare ga
      // body: ConstrainedBox(
      //   constraints: BoxConstraints(
      //     minHeight: 40,
      //     minWidth: 200,
      //     maxHeight: 60,
      //     maxWidth: 300,
      //   ),
      //   child: SizedBox.shrink(
      //     child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      //   ),
      // ),

      //SizedBox.square() mein dimension deni hoti hai yani agar maine 100 dimension di hai to height
      // and width 100*100 ho jaye gi
      // body: SizedBox.square(
      //   dimension: 100,
      //   child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      // ),

      //SizedBox ko horizontally spacing ya margin k liye width use karen gy
      // body: Wrap(
      //   children: [
      //     SizedBox.square(
      //       dimension: 100,
      //       child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      //     ),
      //     SizedBox(width: 10),
      //     SizedBox.square(
      //       dimension: 100,
      //       child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      //     ),
      //     SizedBox(width: 40),
      //     SizedBox.square(
      //       dimension: 100,
      //       child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
      //     ),
      //   ],
      // ),

      //SizedBox ko vertically spacing ya margin k liye height use karen gy
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
          ),
          SizedBox(height: 10),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
          ),
          SizedBox(height: 40),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click Me!")),
          ),
        ],
      ),
    );
  }
}
