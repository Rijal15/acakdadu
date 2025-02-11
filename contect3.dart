import 'package:flutter/material.dart';
import 'dart:math';

final randomizher = Random();

class DiceRover extends StatefulWidget {
  const DiceRover({super.key});
  @override
  State<DiceRover> createState(){
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRover>{
  
  var currentDiceRoller1 = 2;
  var currentDiceRoller2= 2;
  var currentDiceRoller3= 2;
  void rollDice() {
    setState(() {
      currentDiceRoller1 = randomizher.nextInt(6) + 1;
      currentDiceRoller2 = randomizher.nextInt(6) + 1;
      currentDiceRoller3 = randomizher.nextInt(6) + 1; 
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
        Image.asset(
        'assest/dice-$currentDiceRoller3.png',
       width: 200,
       ),
          
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(220, 26, 1, 1),
            textStyle: TextStyle(fontSize: 29),
          ),
          child: const Text('rollDice'),
        ),
      ],
    );














  }
}