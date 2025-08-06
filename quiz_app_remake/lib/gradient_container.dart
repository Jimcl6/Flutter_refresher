import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.containerColors});

  final List<Color> containerColors;

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: containerColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/logo/quiz-logo.png', width: 250.0, color: Color.fromARGB(150, 255, 255, 255),),
              // Opacity(opacity: 0.6, child:),
              const SizedBox(height: 20.0),
              Text(
                'Learn Flutter the fun way'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 20.0),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  foregroundColor: Colors.white,                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
                label: Text('Start Quiz'),
                icon: Icon(Icons.arrow_right_alt_outlined),
              ),
            ],
          ),
        );
  }
}