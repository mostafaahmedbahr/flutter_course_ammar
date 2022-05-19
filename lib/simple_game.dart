import 'dart:math';

import 'package:flutter/material.dart';
class Game extends StatefulWidget {

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var leftImageNumber=2;
  var rightImageNumber=1;
  @override
  Widget build(BuildContext context) {
    String word;
    if(leftImageNumber==rightImageNumber){
      setState(() {
        word="احسنت";
      });
    }
    else{
      setState(() {
        word="حاول مرة اخرى";
      });
    }
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      appBar: AppBar(
        title: Text("تطابق صورتين"),
        backgroundColor: Colors.indigo,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(word,
            style: TextStyle(fontSize: 40,color: Colors.white),),
          Row(
            children: [
              Expanded(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        leftImageNumber=Random().nextInt(8)+1;
                      });
                    },
                    child: Image(
                      image: AssetImage("assets/images/image-$leftImageNumber.png"),
                    ),
                  )),
              Expanded(
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        rightImageNumber=Random().nextInt(8)+1;
                      });
                    },
                    child: Image(
                      image: AssetImage("assets/images/image-$rightImageNumber.png"),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
