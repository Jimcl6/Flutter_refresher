import 'package:adv_basics_quiz_flutter/padded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(100, 255, 255, 255),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.spaceMono(
              textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          SizedBox(height: 10.0),
          PaddedButton(
            onPressed: startQuiz,
            Icon(Icons.arrow_right_alt_sharp, color: Colors.white24),
            Text('Start Quiz', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
