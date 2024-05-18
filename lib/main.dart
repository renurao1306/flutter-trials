import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.white],
            ),
          ),
          child: const Center(
            child: Text(
              'Hello world',
              style: TextStyle(
                fontSize: 32.0,
                backgroundColor: Color.fromARGB(255, 33, 81, 202),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
