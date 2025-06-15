import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        SizedBox(height: 35.0),
        Text(
          'Learn Flutter the fun way!'.toUpperCase(),
          style: TextStyle(color: Colors.white, letterSpacing: 1.5),
        ),
        SizedBox(height: 35.0),
        TextButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(
              color: Color.fromARGB(150, 255, 255, 255),
              width: 0.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          label: Text('Start Quiz'),
          icon: Icon(Icons.arrow_right_alt_sharp),
        ),
      ],
    );
  }
}
