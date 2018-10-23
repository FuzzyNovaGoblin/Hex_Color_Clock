import 'package:color_clock/logic/conversion.dart';
import 'package:color_clock/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main()
{
  Duration duration = Duration(seconds: 1);

//  Timer.periodic(duration, (Timer t){
//    print("hi");
////    Conversion.h = DateTime.now().hour;
////    Conversion.m = DateTime.now().minute;
////    Conversion.s = DateTime.now().second;
////    print(Conversion.h.toString() + ":" + Conversion.m.toString() + ":" + Conversion.s.toString());
////    Conversion.timeText = Conversion.h.toString() + ":" + Conversion.m.toString() + ":" + Conversion.s.toString();
////
////    Conversion.h = Conversion.toHexValue(Conversion.h);
////    Conversion.m = Conversion.toHexValue(Conversion.m);
////    Conversion.s = Conversion.toHexValue(Conversion.s);
//  });

  runApp(new MaterialApp(home: HomePage(), title: "Clock",));
  
}
