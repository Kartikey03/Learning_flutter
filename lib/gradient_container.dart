import 'package:flutter/material.dart';
import 'package:notes/dice_roller.dart';

const beginalign = Alignment.topCenter;
const endalign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: beginalign,
            end: endalign,
          ),
        ),
        child: const DiceRoller(),
      );
  }
}
