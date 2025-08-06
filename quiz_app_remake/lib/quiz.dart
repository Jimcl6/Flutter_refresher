import 'package:flutter/material.dart';
import 'package:quiz_app_remake/gradient_container.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(containerColors: [Colors.deepPurple.shade600, Colors.deepPurple.shade800]),
      ),
    );
  }
}
