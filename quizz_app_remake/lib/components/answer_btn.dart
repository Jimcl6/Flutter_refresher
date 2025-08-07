import 'package:flutter/material.dart';

class AnswerBtn extends StatefulWidget {
  const AnswerBtn({super.key});

  @override
  State<AnswerBtn> createState() => _AnswerBtnState();
}

class _AnswerBtnState extends State<AnswerBtn> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      label: Text('Start'),
      onPressed: () {},
      autofocus: true,
      icon: Icon(Icons.arrow_right_alt_sharp),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        iconAlignment: IconAlignment.start,
        side: BorderSide(color: Colors.white, width: 1),
      ),
    );
  }
}
