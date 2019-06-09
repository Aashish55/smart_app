import 'package:flutter/material.dart';
import '../weather/weather_helper.dart';
import '../weather/app_colors.dart';

class Area extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _AreaState();
  }

}
class _AreaState extends State<Area>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Area',
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