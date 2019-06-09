import 'package:flutter/material.dart';
import '../weather/app_colors.dart';
import '../weather/weather_helper.dart';

class Data extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _DataState();
  }

}
class _DataState extends State<Data>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Data',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: BackgroundColors.morningEveStartColor,
      ),
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            gradient: WeatherHelper.buildGradient(
              BackgroundColors.morningEveStartColor,
              BackgroundColors.morningEveEndColor,
            ),
          ),
        ),
        new Container(
          alignment: Alignment.topCenter,
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: <Widget>[
              new TextField(
                cursorColor: Colors.white,
                controller: null,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    labelText: 'Input Here...',
                    hintText: ' 0',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    icon: Icon(Icons.arrow_forward)),
              ),
            ],
          ),
        ),
      ]),
    );
  }

}