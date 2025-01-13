import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 10, 197, 207),
          Color.fromARGB(255, 38, 73, 107),
        ),
      ),
    ),
  );
}
