import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer(this.colors, {super.key});
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
    : color1 = const Color.fromARGB(255, 39, 16, 109),
      color2 = const Color.fromARGB(255, 79, 33, 185);

  final Color color1;
  final Color color2;

  int rollDice() {
    final random = Random();
    int randomNumber = random.nextInt(6) + 1;
    return randomNumber;
  }

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
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/dice-1.png', width: 200),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Roll Dice',
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
