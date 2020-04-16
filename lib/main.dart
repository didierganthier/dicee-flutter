import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget{
  @override
  DicePageState createState() => DicePageState();

}

class DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  generateRandomNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                     generateRandomNumber();
                    },
                  )
              ),
              Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      generateRandomNumber();
                    },
                  )
              )
            ]
        ),
    );
  }
}
