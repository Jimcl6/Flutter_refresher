import 'package:flutter/material.dart';
import 'package:xylophone_flutter/note_player.dart';
import 'package:google_fonts/google_fonts.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NotePlayer(note: 1, backgroundColor: Colors.red),
            NotePlayer(note: 2, backgroundColor: Colors.orange),
            NotePlayer(note: 3, backgroundColor: Colors.yellow),
            NotePlayer(note: 4, backgroundColor: Colors.green),
            NotePlayer(note: 5, backgroundColor: Colors.blue),
            NotePlayer(note: 6, backgroundColor: Colors.indigo),
            NotePlayer(note: 7, backgroundColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}
