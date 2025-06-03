import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Dice Rolled');
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(activeDiceImage, width: 200),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(activeDiceImage, width: 200),
                  ),
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
                // backgroundColor: const Color.fromARGB(255, 107, 107, 107),
                foregroundColor: Colors.white,
                textStyle: GoogleFonts.roboto(
                  fontSize: 28,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              onPressed: rollDice,
              child: Text('Roll Dice'.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
