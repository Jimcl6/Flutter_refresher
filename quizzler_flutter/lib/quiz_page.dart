import 'package:flutter/material.dart';
import 'package:quizzler_flutter/ans_btn.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];

  List<bool> answers = [false, true, true];

  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[currentQuestionIndex],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: AnsBtn(
              'True',
              Colors.green,
              onPressed: () {
                bool isCorrect = answers[currentQuestionIndex];

                if (isCorrect == true) {
                  print("[DEBUG]: User got it right.");
                } else {
                  print("[DEBUG]: User got it wrong.");
                }

                setState(() {
                  currentQuestionIndex++;
                });

                print(currentQuestionIndex);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: AnsBtn(
              'False',
              Colors.red,
              onPressed: () {
                bool isCorrect = answers[currentQuestionIndex];

                if (isCorrect == false) {
                  print("[DEBUG]: User got it right.");
                } else {
                  print("[DEBUG]: User got it wrong.");
                }

                setState(() {
                  currentQuestionIndex++;
                });

                print(currentQuestionIndex);
              },
            ),
          ),
        ),
        Row(children: scoreKeeper),
      ],
    );
  }
}


/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/