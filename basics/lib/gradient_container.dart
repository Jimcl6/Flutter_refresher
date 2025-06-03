import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:basics/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer(this.colors, {super.key});
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
    : color1 = const Color.fromARGB(255, 39, 16, 109),
      color2 = const Color.fromARGB(255, 79, 33, 185);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
