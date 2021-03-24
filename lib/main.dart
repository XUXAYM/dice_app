import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    home: DiceRollingPage(),
  ));
}

class DiceRollingPage extends StatefulWidget {
  @override
  _DiceRollingPageState createState() => _DiceRollingPageState();
}

class _DiceRollingPageState extends State<DiceRollingPage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void setNewDicesNumbers() => setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dice'),
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: setNewDicesNumbers,
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: setNewDicesNumbers,
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
