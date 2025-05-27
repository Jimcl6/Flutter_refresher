import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 39, 16, 109),
          Color.fromARGB(255, 79, 33, 185),
        ),
      ),
    ),
  );
}
