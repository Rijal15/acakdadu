import 'package:flutter/material.dart';
import 'dart:math';

final randomizher = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller>{
  
  var currentDiceRoller1 = 2;
  var currentDiceRoller2= 2;

  void rollDice() {
    setState(() {
      currentDiceRoller1 = randomizher.nextInt(6) + 1;
      currentDiceRoller2 = randomizher.nextInt(6) + 1;
    });
  }


  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assest/dice-$currentDiceRoller1.png',
          width: 200,
        ),
       Image.asset(
        'assest/dice-$currentDiceRoller2.png',
       width: 200,
       ),
          
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('rollDice'),
        ),
      ],
    );














  }
}