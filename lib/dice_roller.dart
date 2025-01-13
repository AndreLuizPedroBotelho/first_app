import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRool = 2;

  void rollDice() {
    setState(() {
      currentDiceRool = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            splashFactory: NoSplash.splashFactory,

            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: Image.asset(
            'assets/images/dice-$currentDiceRool.png',
            width: 200,
          ),
        ),
      ],
    );
  }
}
