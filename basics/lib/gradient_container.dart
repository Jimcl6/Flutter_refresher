import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Image.asset('assets/images/dice-1.png', width: 200, height: 200),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.white, width: 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Hello World'.toUpperCase(),
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
