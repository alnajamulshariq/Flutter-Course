import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StatefulWidget Updating",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updating Correctly With Stateful Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var sum1 = int.parse(no1Controller.text.toString());
                    var sum2 = int.parse(no2Controller.text.toString());
                    var sum = sum1 + sum2;
                    result = "The Sum Of $sum1 + $sum2 is = $sum";
                    setState(() {});
                  },
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var sub1 = int.parse(no1Controller.text.toString());
                    var sub2 = int.parse(no2Controller.text.toString());
                    var sub = sub1 - sub2;
                    result = "The Subtraction Of $sub1 - $sub2 = $sub";
                    setState(() {});
                  },
                  child: Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var mul1 = int.parse(no1Controller.text.toString());
                    var mul2 = int.parse(no2Controller.text.toString());
                    var mul = mul1 * mul2;
                    result = "The Multiplication Of $mul1 * $mul2 = $mul";
                    setState(() {});
                  },
                  child: Text("Mul"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var div1 = int.parse(no1Controller.text.toString());
                    var div2 = int.parse(no2Controller.text.toString());
                    var div = div1 / div2;
                    result = "The Division Of $div1 / $div2 = $div";
                    setState(() {});
                  },
                  child: Text("Div"),
                ),
              ],
            ),
            Container(
              child: Text(
                result,
                style: TextStyle(fontSize: 26, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
