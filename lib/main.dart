import 'package:flutter/material.dart';
import 'package:notes/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:GradientContainer([Colors.cyan, Colors.blueAccent, Colors.black]),
      ),
    ),
  );
}

