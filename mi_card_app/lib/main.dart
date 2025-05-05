import 'package:flutter/material.dart';

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
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/C4D03AQFmhBaNrxgh3Q/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1517604351326?e=1752105600&v=beta&t=_Qxe2c2rAE8JUHJ7Jjex6CxTicT7sMM7RjCJW49J7ok',
                  ),
                  radius: 60,
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text('Hello World'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
