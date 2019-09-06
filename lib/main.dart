import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dicee();
  }
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[700],
          title: Text('DICEE APP'),
        ),
        backgroundColor: Colors.white30,
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child:
                        Image.asset('assets/images/Dice-$leftDiceNumber.png'),
                    onPressed: changeDiceFace,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child:
                        Image.asset('assets/images/Dice-$rightDiceNumber.png'),
                    onPressed: changeDiceFace,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
