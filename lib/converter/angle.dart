import 'package:flutter/material.dart';
import 'package:smart_app/converter/length.dart';
import '../weather/app_colors.dart';
import '../weather/weather_helper.dart';

class Angle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AngleState();
  }
}

class _AngleState extends State<Angle> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Degree';
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Angle',
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
              Divider(
                height: 3.0,
              ),
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
              new DropdownButton<String>(
                value: dropdownValue,
                style: new TextStyle(
                  color:BackgroundColors.morningEveEndColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
                ),
                iconDisabledColor: Colors.white,
                iconEnabledColor: Colors.white,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'Degree',
                  'Radian',
                  'Grade',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
