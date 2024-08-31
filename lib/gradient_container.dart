import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: StyleTextNew("Hashib Raja"),
      ),
    );
  }
}
