import 'package:adv_basics/screens/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/screens/start_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var activeScreen = 'start-screen';

  // first option for statemanagement.

  // Widget? activeCurrentScreen;

  // Method where in we don't use initState()!
  // @override
  // void initState() {
  //   activeCurrentScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeCurrentScreen = const QuestionsScreen();
  //   });
  // }

  // ---------------------------------
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple.shade800, Colors.purple.shade800],
            ),
          ),
          child: Center(child: screenWidget),
        ),
      ),
    );
  }
}
