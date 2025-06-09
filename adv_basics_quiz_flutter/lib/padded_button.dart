import 'package:flutter/material.dart';

class PaddedButton extends StatelessWidget {
  const PaddedButton(this.icon, this.text, {this.onPressed, super.key});

  final void Function()? onPressed;

  final Icon icon;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onPressed: onPressed,
        icon: icon,
        label: text,
      ),
    );
  }
}
