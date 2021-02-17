import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  AssetImage diceImage1;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
      diceImage1 = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random1 = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage1;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    switch (random1) {
      case 1:
        newImage1 = one;
        break;
      case 2:
        newImage1 = two;
        break;
      case 3:
        newImage1 = three;
        break;
      case 4:
        newImage1 = four;
        break;
      case 5:
        newImage1 = five;
        break;
      case 6:
        newImage1 = six;
        break;
    }

    setState(() {
      diceImage = newImage;
      diceImage1 = newImage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 100.0,
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Image(
                image: diceImage1,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  onPressed: rollDice,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    'Roll the dice!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
