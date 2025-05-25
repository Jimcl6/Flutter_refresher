import 'package:flutter/material.dart';
import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            Color.fromARGB(255, 39, 16, 109),
            Color.fromARGB(255, 79, 33, 185),
          ],
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
