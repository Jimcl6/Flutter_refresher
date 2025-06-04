import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImg1 = 'assets/images/dice-1.png';
  var activeDiceImg2 = 'assets/images/dice-1.png';
  void rollDice() {
    int randomNum1 = Random().nextInt(6) + 1;
    int randomNum2 = Random().nextInt(6) + 1;

    setState(() {
      activeDiceImg1 = 'assets/images/dice-$randomNum1.png';
      activeDiceImg2 = 'assets/images/dice-$randomNum2.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(activeDiceImg1, width: 200),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(activeDiceImg2, width: 200),
              ),
            ),
          ],
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            side: BorderSide(width: 1, color: Colors.white),
            padding: const EdgeInsets.all(16),
            // backgroundColor: const Color.fromARGB(255, 107, 107, 107),
            foregroundColor: Colors.white,
            textStyle: GoogleFonts.sourceCodePro(
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          onPressed: rollDice,
          child: Text('Roll Dice'.toUpperCase()),
        ),
      ],
    );
  }
}
