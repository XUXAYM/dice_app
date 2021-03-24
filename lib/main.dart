import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
    );
  }
}
