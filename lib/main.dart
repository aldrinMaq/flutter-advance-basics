import 'package:flutter/material.dart';
import 'package:advance_basics/start_text.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Color.fromARGB(255, 33, 89, 243)]),
          ),
          child: const StartText(),
        ),
      ),
    ),
  );
}
