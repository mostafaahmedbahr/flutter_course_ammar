
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text("نغمات"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          musicButton("Samsung Galaxy","sounds/assets_music-1.mp3",Colors.red,Colors.white),
          musicButton("Samsung Note","sounds/assets_music-2.mp3",Colors.green,Colors.white),
          musicButton("Nokia","sounds/assets_music-3.mp3",Colors.purple,Colors.white),
          musicButton("iphone","sounds/assets_music-4.mp3",Colors.yellow,Colors.black),
          musicButton("iphone 6","sounds/assets_music-5.mp3",Colors.brown,Colors.white),
          musicButton("Realme C3","sounds/assets_music-6.mp3",Colors.blueAccent,Colors.white),
          musicButton("Readme Note7","sounds/assets_music-7.mp3",Colors.pink,Colors.white),
        ],
      ),
    );
  }
}
Widget musicButton(String txt,String bb,Color color,Color tcolor){
  return Expanded(
    child: RaisedButton(
      onPressed: (){
        button(bb);
      },
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            Icon(Icons.music_note,color: tcolor,),
            SizedBox(width: 10,),
            Text(txt,style: TextStyle(
              fontSize: 20,
              color: tcolor,
            ),),
          ],
        ),
      ),
    ),
  );
}

void button(String bb) {
  final player=AudioCache();
  player.play(bb);
}
