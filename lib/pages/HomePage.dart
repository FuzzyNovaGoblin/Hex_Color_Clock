import 'package:flutter/material.dart';
import 'package:color_clock/logic/conversion.dart';
import 'dart:async';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State
{
Duration duration = new Duration(seconds: 1);
  
//  int s = int. h.toString()
  
  @override
  void initState()
  {
    Timer.periodic(duration, (Timer t){
//      print("hi");
    Conversion.h = DateTime.now().hour;
    Conversion.m = DateTime.now().minute;
    Conversion.s = DateTime.now().second;
//    print(Conversion.h.toString() + ":" + Conversion.m.toString() + ":" + Conversion.s.toString());
    Conversion.timeText = Conversion.tToString(Conversion.h) + ":" + Conversion.tToString(Conversion.m) + ":" + Conversion.tToString(Conversion.s);
//
    setState(() {
      Conversion.h = Conversion.toHexValue(Conversion.h);
      Conversion.m = Conversion.toHexValue(Conversion.m);
      Conversion.s = Conversion.toHexValue(Conversion.s);
    });
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, Conversion.h, Conversion.m, Conversion.s),
      child: Center(
        child: Text(Conversion.timeText,style: TextStyle(fontSize: 60.0),),
      ),
    );
  }
  
}