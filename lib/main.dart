import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Ask Me Anything',
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Georgia')),
        backgroundColor: Colors.grey[100],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: () {
        changeBallNumber();
      },
      child: Image.asset('images/ball$ballNumber.png'),
    ));
  }
}
