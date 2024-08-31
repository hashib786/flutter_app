import 'dart:math';
import 'package:flutter/material.dart';

final randamizor = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRoll();
  }
}

class _DiceRoll extends State<DiceRoll> {
  var currentDiceNum = randamizor.nextInt(5) + 1;

  void handleRoll() {
    setState(() {
      currentDiceNum = randamizor.nextInt(5) + 1;
      print("::::::::::::: $currentDiceNum ::::::::::::::");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.yellow])),
          padding: const EdgeInsets.fromLTRB(20, 0.8, 20, 0.8),
          child: Text(
            "Current Number :- [ $currentDiceNum ]",
            style: const TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.asset(
          "assets/images/dice-$currentDiceNum.png",
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
