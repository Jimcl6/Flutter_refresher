import 'package:adv_basics/models/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Questions go here...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30.0),
          AnswerButton(answerText: 'Hello World', onTap: () {}),
          AnswerButton(answerText: 'Hello World', onTap: () {}),
          AnswerButton(answerText: 'Hello World', onTap: () {}),
        ],
      ),
    );
  }
}
