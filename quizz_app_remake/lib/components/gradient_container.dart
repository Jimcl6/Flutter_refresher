import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.gradientColors});

  List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            fit: BoxFit.contain,
            width: 300,
            height: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 2.0,
              ),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            label: Text(
              'Start'.toUpperCase(),
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            onPressed: () {},
            autofocus: true,
            icon: Icon(Icons.arrow_right_alt_sharp),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              iconAlignment: IconAlignment.start,
              side: BorderSide(color: Colors.white, width: 1),
            ),
          ),
        ],
      ),
    );
  }
}
