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
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // 0 <> 5  após  + 1  1 <> 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Etec Pedro Badran - 2025',
          style: TextStyle(
            color: Colors.white, // Define a cor do texto para branco
            fontSize: 20, // Define o tamanho da fonte
            // Você pode adicionar mais estilos como fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ), // Espaçamento entre o texto e a imagem do dado
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Clique girar o Dado'),
        ),
      ],
    );
  }
}
