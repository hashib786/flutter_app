import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.blue], begin: Alignment.topLeft),
      ),
      child: const Center(
        child: StyleTextNew(),
      ),
    );
  }
}
