import "package:flutter/material.dart";
import "package:first_app/gradient_container.dart";

const gradientColors = [Color.fromARGB(255, 54, 244, 86), Colors.blue];

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: gradientColors,
        ),
      ),
    ),
  );
}
