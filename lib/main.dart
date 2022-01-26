import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  int upDiceNumber=6;
  int buttonDiceNumber=6;
  int bottomDiceNumber=6;
  void diceChangeFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
      upDiceNumber=Random().nextInt(6)+1;
      buttonDiceNumber=Random().nextInt(6)+2;
      bottomDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.done),
      ),
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Dice App',style: TextStyle(
          color: Colors.blue,fontSize: 40,fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        elevation: 30,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$upDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  diceChangeFace();
                },
                child: Image(
                  image: AssetImage('images/dice$buttonDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){},
                child: Image(
                  image: AssetImage('images/dice$bottomDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Image(
                    image: AssetImage('images/dice5.png'),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

