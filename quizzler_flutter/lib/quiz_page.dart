import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [
    Icon(Icons.check, color: Colors.lightGreen),
    Icon(Icons.close_sharp, color: Colors.red),
    Icon(Icons.close_sharp, color: Colors.red),
    Icon(Icons.close_sharp, color: Colors.red),
    Icon(Icons.close_sharp, color: Colors.red),
  ];

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
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  scoreKeeper.add(Icon(Icons.check, color: Colors.lightGreen));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  scoreKeeper.add(Icon(Icons.close_sharp, color: Colors.red));
                });
              },
            ),
          ),
        ),
        Row(children: scoreKeeper),
      ],
    );
  }
}
