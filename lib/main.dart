import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ask Me Anything",
            textAlign: TextAlign.left,
          ),
          backgroundColor: Colors.blue.shade900),
      body: Container(
        child: Center(
          child: Ball(),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Image.asset("images/ball$ballNumber.png"),
        onPressed: () {
          setState(() {
            int newNumber = 0;
            do {
               newNumber = Random().nextInt(5) + 1;
            } while(ballNumber == newNumber);
            ballNumber = newNumber;
            print("$newNumber");
          });
        },
      ),
    );
  }
}
