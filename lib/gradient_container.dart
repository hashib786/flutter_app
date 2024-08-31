import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/dice-1.png",
          width: 200,
        ),
      ),
    );
  }
}
