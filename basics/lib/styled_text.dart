import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lobster(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 250, 250),
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
