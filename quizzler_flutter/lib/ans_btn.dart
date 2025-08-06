import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnsBtn extends StatelessWidget {
  AnsBtn(this.btnText, this.backgroundColor, {super.key, this.onPressed});

  String btnText;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        btnText.toUpperCase(),
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
            letterSpacing: 2.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
