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
          backgroundColor: Colors.red.shade700,
          title: Text(
            'Dicee'.toUpperCase(),
            style: TextStyle(color: Colors.white, letterSpacing: 2.0),
          ),
          centerTitle: true,
        ),
        body: Center(child: DicePage()),
      ),
    );
  }
}
