import 'package:flutter/material.dart';

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
    setState(() {
      currentDice = 'assets/images/dice-2.png';
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
