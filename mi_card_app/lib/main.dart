import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: const Text('Hello World!'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: const Text('Hello World!'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: const Text('Hello World!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
