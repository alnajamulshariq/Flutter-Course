import 'package:flutter/material.dart';
import 'package:ses_39_passing_data_from_one_to_another_screen/profile.dart';

class HomeScreen extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text("Hello World!")),
            SizedBox(height: 20),
            Container(child: TextField(controller: nameController)),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              ProfileScreen(nameController.text.toString()),
                    ),
                  );
                },
                child: Text("Profile Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
