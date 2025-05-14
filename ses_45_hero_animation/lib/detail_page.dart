import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"), centerTitle: true),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset('assets/images/flutter.jpg'),
        ),
      ),
    );
  }
}
