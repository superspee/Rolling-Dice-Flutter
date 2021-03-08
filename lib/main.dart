import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}


class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  void leftDice(){


    random(min, max){
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }
    var RightDice =random(1,6);
    var RangeDice=random(1,6); // Output : 19, 6, 15..
    rightDiceNumber=RightDice;
    leftDiceNumber=RangeDice;
    print("left dice is: $leftDiceNumber");

  }


  void rightDice(){




    random(min, max){
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }
    var RangeDice=random(1,6);
    var RightDice=random(1,6);
    leftDiceNumber=RightDice;
    rightDiceNumber=RangeDice;
    print("left dice is: $rightDiceNumber");



  }












  var leftDiceNumber=1;
  var rightDiceNumber=2;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (


                    )

                {
                  leftDice();
                  setState(() {

                  });

                },
                child: Image(image: AssetImage("images/dice$leftDiceNumber.png")),
              ),
            ),
            SizedBox(width: 30.0),
            Expanded(
              child: FlatButton(
                onPressed: () {

rightDice();


    setState(() {

    });

  },

                child: Image(image: AssetImage("images/dice$rightDiceNumber.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

