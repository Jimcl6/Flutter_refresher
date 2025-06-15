import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Questions go here...',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: () {},
          child: Text('Answers here...'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade900,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Answers here...'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade900,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Answers here...'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade900,
          ),
        ),
      ],
    );
  }
}
