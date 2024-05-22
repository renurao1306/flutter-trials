import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var currentDiceNumber = 1;
  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
                side: const BorderSide(width: 2)),
            onPressed: rollDice,
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 30),
            ))
      ],
    );
  }
}
