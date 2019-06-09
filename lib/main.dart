import 'package:flutter/material.dart';
import 'package:smart_app/converter/converter.dart';
import 'package:smart_app/scanner/scanner.dart';
import 'homepage.dart';
import 'calculator/calculator.dart';
import 'Notes/main.dart';
import 'weather/weather.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homepage',
      theme: ThemeData(
        primaryColor: new Color(0xfff5f5f5)
      ),
      routes:{
        '/':(BuildContext context) => Homepage(),
        '/calculator': (BuildContext context) => Calculator(),
        '/notes': (BuildContext context) => Notes(),
        '/converter': (BuildContext context) => Converter(),
        '/weather': (BuildContext context) => Weather(),
        '/vault': (BuildContext context) => SecondPage(),
        '/scanner': (BuildContext context) => Scanner(),
        '/file_share': (BuildContext context) => SecondPage(),
      }
    );
  }

}
