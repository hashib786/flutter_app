import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRoll();
  }
}

class _DiceRoll extends State<DiceRoll> {
  var currentDiceImage = "assets/images/dice-1.png";

  void handleRoll() {
    setState(() {
      currentDiceImage = "assets/images/dice-4.png";
      print(":::::::::::::::::::::::::::");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
            onPressed: handleRoll,
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice")),
      ],
    );
  }
}
