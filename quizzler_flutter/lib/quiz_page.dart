import 'package:flutter/material.dart';
import 'package:quizzler_flutter/ans_btn.dart';
import 'package:quizzler_flutter/question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];

  // List<bool> answers = [false, true, true];

  List<Questions> questionsAndAnswers = [
    Questions(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false,
    ),
    Questions(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      questionAnswer: true,
    ),
    Questions(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Questions(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false,
    ),
    Questions(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      questionAnswer: true,
    ),
    Questions(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];

  int currentQuestionIndex = 0;

  void checkAnswer(bool userAnswer) {
    userAnswer = questionsAndAnswers[currentQuestionIndex].questionAnswer;

    if (userAnswer == true) {
      print("[DEBUG]: User got it right.");
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
    } else {
      print("[DEBUG]: User got it wrong.");
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }

    if (currentQuestionIndex >= questionsAndAnswers.length - 1) {
      print("[DEBUG]: Quiz completed.");
      // Optionally, reset the quiz or show a dialog
      scoreKeeper.clear(); // Clear the scoreKeeper for a new quiz
      currentQuestionIndex = 0; // Reset for demonstration purposes
    } else {
      print("[DEBUG]: Moving to next question.");
    }

    setState(() {
      currentQuestionIndex++;
    });

    print(currentQuestionIndex);
  }

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
                // this is the syntax to access the question text
                questionsAndAnswers[currentQuestionIndex].questionText,
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
                checkAnswer(true);
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
                checkAnswer(false);
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