import 'package:flutter/material.dart';

class AnsBtn extends StatelessWidget {
  const AnsBtn(this.backgroundColor, this.onPressed, {super.key});

  final Color backgroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
