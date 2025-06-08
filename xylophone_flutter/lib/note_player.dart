import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NotePlayer extends StatelessWidget {
  const NotePlayer({
    required this.note,
    required this.backgroundColor,
    super.key,
  });

  final int note;
  final Color backgroundColor;

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide.none,
          ),
        ),
        onPressed: () {
          playSound(note); // Ensure you have the note1.wav file in your assets
        },
        child: Text(
          'Play Note',
          style: TextStyle(fontSize: 20, color: Color.fromARGB(0, 0, 0, 0)),
        ),
      ),
    );
  }
}
