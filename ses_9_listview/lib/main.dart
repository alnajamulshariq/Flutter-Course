import 'package:flutter/material.dart';

void main() {
  var arrNames = [
    "Shariq",
    "Abdullah",
    "Ali",
    "Samad",
    "Yasir",
    "Hamza",
    "Zubair",
    "Haris",
    "Majid",
    "Sajid",
  ];
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Widget"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),

        // Static ListView
        body:
        // ListView(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 1",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 2",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 3",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 4",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 5",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 6",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 7",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 8",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 9",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 10",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 11",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 12",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 13",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 14",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "Here is Text 15",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //   ],
        // ),
        // ListView.builder by item count
        // ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text("Demo Data 1");
        //   },
        //   itemCount: 10,
        // ),
        // ListView by Array
        // ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(
        //       arrNames[index],
        //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //     );
        //   },
        //   itemCount: arrNames.length,
        //   itemExtent: 100,
        //   scrollDirection: Axis.horizontal,
        // ),
        // ListView Separated Builder
        ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 50, thickness: 2);
          },
        ),
      ),
    ),
  );
}
