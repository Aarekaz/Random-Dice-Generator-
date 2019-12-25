import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Random Dice Generator "),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceImg = 1;
  int secondDiceImg = 6;
  void changedice() {
    setState(() {
      firstDiceImg = Random().nextInt(6) + 1;
      secondDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("first Button was pressed");
                  changedice();
                },
                child: Image.asset("images/dice$firstDiceImg.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("second Button was pressed");
                  changedice();
                },
                child: Image.asset("images/dice$secondDiceImg.png")),
          ),
        ],
      ),
    );
  }
}
