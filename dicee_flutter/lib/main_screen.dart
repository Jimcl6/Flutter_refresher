import 'package:flutter/material.dart';
import 'dice_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee'.toUpperCase(),
            style: TextStyle(color: Colors.white, letterSpacing: 2.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade600,
        ),
        body: Center(child: DicePage()),
      ),
    );
  }
}
