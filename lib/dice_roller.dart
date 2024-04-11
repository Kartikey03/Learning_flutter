import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDice = 'assets/images/dice-5.png';

  

  void rolldice(){
    var diceRoll = randomiser.nextInt(6)+1;
    setState(() {
      currentDice = 'assets/images/dice-$diceRoll.png';
    });
    
  }
  @override
  Widget build(context){
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            currentDice,
            width: 200,
          ),
          TextButton(
              onPressed: rolldice,
              child: const 
              Text(
                "Roll Dice",
                style: TextStyle(color: Colors.white, fontSize: 27,), 

              )
            )
        ]),
      );
  }
}
