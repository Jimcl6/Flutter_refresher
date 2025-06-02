import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(this.text, this.icon, {super.key});

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListTile(
        leading: icon,
        title: Text(
          text.toLowerCase(),
          style: GoogleFonts.roboto(fontSize: 16),
        ),
      ),
    );
  }
}
