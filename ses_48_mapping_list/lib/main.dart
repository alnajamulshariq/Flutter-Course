import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapping List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> arrNames = [
    'Shariq',
    'Abdullah',
    'Bilal',
    'Moiz',
    'Asghar',
    'Zubair',
    'Yasir',
    'Abrar',
    'Samad',
    'Luqman',
    'Ali',
    'Adnan',
    'Shahbaz',
    'Asim',
    'Ahsan',
    'Faizan',
  ];

  final List<dynamic> arrData = [
    {'name': 'Shariq', 'mob': '03001234567', 'unread': '2'},
    {'name': 'Ali', 'mob': '03001234567', 'unread': '1'},
    {'name': 'Zubair', 'mob': '03001234567', 'unread': '3'},
    {'name': 'Ahsan', 'mob': '03001234567', 'unread': '2'},
    {'name': 'Abdullah', 'mob': '03001234567', 'unread': '1'},
    {'name': 'Samad', 'mob': '03001234567', 'unread': '1'},
    {'name': 'Abrar', 'mob': '03001234567', 'unread': '2'},
    {'name': 'Luqman', 'mob': '03001234567', 'unread': '1'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mapping List'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children:
                  arrNames.map((value) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(value),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
          Expanded(
            child: ListView(
              children:
                  arrData.map((e) {
                    return ListTile(
                      leading: Icon(Icons.person),
                      title: Text(e['name']),
                      subtitle: Text(e['mob']),
                      trailing: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue.shade100,
                        child: Text(e['unread']),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
