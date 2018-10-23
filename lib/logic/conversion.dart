import 'package:flutter/material.dart';

class Conversion
{
  static int h = 0, m = 0, s = 0;
  static String timeText = "00:00:00";
  static int toHexValue(int num)
  {
    String numString = num.toString();
    if(numString.length < 2)
      numString = "0"+numString;
//    String num1String = num.toString().substring(0,1)
//    String num2String = num.toString().substring(1)
    int num1 = int.parse(numString.substring(0,1));
    int num2 = int.parse(numString.substring(1,2));
    
    return num1 * 16 + num2;
//  return 0;
  }
  static tToString(int num)
  {
    String s = num.toString();
    if(s.length < 2)
      s = "0"+s;
    return s;
  }
}