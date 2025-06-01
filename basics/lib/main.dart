import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(body: GradientContainer.purple()),
    ),
  );
}
