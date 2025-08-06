import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade600, Colors.deepPurple.shade800],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo/quiz-logo.png', width: 250.0),
              const SizedBox(height: 20.0),
              Text(
                'Learn Flutter the fun way'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 20.0),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
                label: Text('Start Quiz'),
                icon: Icon(Icons.arrow_right_alt_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
