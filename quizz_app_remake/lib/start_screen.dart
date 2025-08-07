import 'package:flutter/material.dart';
import 'package:quizz_app_remake/components/gradient_container.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      gradientColors: [Colors.deepPurple.shade900, Colors.deepPurple.shade500],
    );
  }
}
