import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Hello World!')),
      drawer: Drawer(
        child: Column(
          children: [
            Row(children: []),
            SizedBox(height: 100, width: 100),
            Container(height: 100, width: 100, padding: EdgeInsets.all(89.0)),
          ],
        ),
      ),
    );
  }
}
