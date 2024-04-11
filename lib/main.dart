import 'package:flutter/material.dart';
import 'package:notes/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:GradientContainer([Colors.blueGrey, Colors.grey, Colors.black]),
      ),
    ),
  );
}

