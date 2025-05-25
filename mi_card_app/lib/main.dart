import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // profile picture
                CircleAvatar(
                  radius: 50.0,
                  foregroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/C4D03AQFmhBaNrxgh3Q/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1517604351326?e=1753920000&v=beta&t=Rbd7eZo5e83DmkCWn8_TK8VzyVKH8OQTcMnCKiF5TGw',
                  ),
                ),

                // name
                Text(
                  'Jed Llorente',
                  style: GoogleFonts.lobster(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),

                // profession
                Text(
                  'Software Engineer'.toUpperCase(),
                  style: GoogleFonts.sourceSans3(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                // horizontal line
                SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(thickness: 0.5, color: Colors.white),
                ),
                // job title
              ],
            ),
          ),
        ),
      ),
    );
  }
}
