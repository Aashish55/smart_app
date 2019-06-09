import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../weather/app_colors.dart';
import '../weather/weather_helper.dart';
import 'length.dart';
import 'mass.dart';
import 'angle.dart';
import 'area.dart';
import 'data.dart';
import 'energy.dart';
import 'power.dart';
import 'pressure.dart';
import 'speed.dart';
import 'temperature.dart';
import 'time.dart';
import 'volume.dart';

class Converter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConverterState();
  }
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Converter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff7f8fa6),
      ),
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            gradient: WeatherHelper.buildGradient(
              BackgroundColors.midnightStartColor,
              BackgroundColors.midnightEndColor,
            ),
          ),
        ),
        new Center(
          child: new ListView.builder(
            itemCount: 12,
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context, int position) {
              return Column(
                children: <Widget>[
                  Divider(height: 5.5,),
                  ListTile(
                    title: new Text(
                      _titleName(position),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.white12,
                      child: Icon(Icons.arrow_right),
                      radius: 15.0,
                      foregroundColor: Colors.white,
                    ),
                    onTap: ()=> _converterTitleTapped(position,context),
                  )
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}

String _titleName(int j) {
  List titles = [
    "Length",
    "Area",
    "Volume",
    "Mass",
    "Temperature",
    "Energy",
    "Time",
    "Power",
    "Data",
    "Pressure",
    "Angle",
    "Speed"
  ];
  return titles[j];
}
void _converterTitleTapped(int page,BuildContext ctx) {
  switch (page){
    case 0:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Length()));
    break;
    case 1:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Area()));
    break;
    case 2:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Volume()));
    break;
    case 3:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Mass()));
    break;
    case 4:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Temperature()));
    break;
    case 5:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Energy()));
    break;
    case 6:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Time()));
    break;
    case 7:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Power()));
    break;
    case 8:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Data()));
    break;
    case 9:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Pressure()));
    break;
    case 10:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Angle()));
    break;
    case 11:
    Navigator.push(ctx,MaterialPageRoute(builder: (ctx) => Speed()));
    break;
  }
    
  }