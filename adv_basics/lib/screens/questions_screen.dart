import 'package:adv_basics/models/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              currentQuestion.text,
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          ...currentQuestion.answers.map((item) {
            return AnswerButton(answerText: item, onTap: () {});
          }),
        ],
      ),
    );
  }
}
