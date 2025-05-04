import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'I am poor'.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal[700],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://img.freepik.com/free-psd/grey-boulder-rock-isolated-transparent-background_632498-25568.jpg?t=st=1746330662~exp=1746334262~hmac=2efc4c2d3b8f5cd499616fe5341a68bb2adf6761254fbc91ee7c877e7789a284&w=740',
            ),
          ),
        ),
      ),
    ),
  );
}
