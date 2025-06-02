import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset('assets/images/dice1.png')),
        Expanded(child: Image.asset('assets/images/dice2.png')),
      ],
    );
  }
}
