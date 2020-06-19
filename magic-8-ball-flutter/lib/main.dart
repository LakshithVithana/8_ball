import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class ball extends StatefulWidget {
  ball({Key key}) : super(key: key);

  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ballNumber = Random().nextInt(4) + 1;
                });
                print('ball number = $ballNumber');
              },
            child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
        
      ),
    );
  }
}

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: ball(),
      ),
    );
  }
}