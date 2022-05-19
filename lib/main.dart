import 'package:flutter/material.dart';
import 'package:flutter_course_arabic/exam_page.dart';
import 'package:flutter_course_arabic/music.dart';
import 'package:flutter_course_arabic/simple_game.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Game(),
    );
  }
}

