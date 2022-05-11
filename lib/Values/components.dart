import 'package:club_care/Values/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var textStyle = TextStyle(
    color: Appcolors.black,
    fontFamily: "Montserrat-Regular"
);

var textStyleBold = TextStyle(
    color: Appcolors.black,
    fontFamily: "Montserrat-Bold"
);

var fieldStyle = InputDecoration(
  filled: true,
  // isDense: true,
  hintStyle: textStyle.copyWith(
    color: Color(0xFFAAAAAA),
    fontSize: 12
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
);


class Textstyle1R {
  static const TextStyle text18 = TextStyle(
      fontSize: 18,
      fontFamily: 'Montserrat-Bold',
      color: Colors.black);
  static const TextStyle text18white = TextStyle(
      fontSize: 18,
      fontFamily: 'Montserrat-Bold',
      color: Colors.white);

  static const TextStyle text15blackbold = TextStyle(
      fontSize: 15,
      fontFamily: 'Montserrat-Bold',
      color: Colors.black);
  static const TextStyle text15whitebold = TextStyle(
      fontSize: 15,
      fontFamily: 'Montserrat-Bold',
      color: Colors.white);
  static const TextStyle text15black = TextStyle(
      fontSize: 15,
      fontFamily: 'Montserrat-Black',
      color: Colors.black);
  static const TextStyle text15white = TextStyle(
      fontSize: 15,
      fontFamily: 'Montserrat-black',
      color: Colors.white);
  static const TextStyle text12black = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat-Black',
      color: Colors.black);
  static const TextStyle text10black = TextStyle(
      fontSize: 10,
      fontFamily: 'Montserrat-Regular',
      color: Colors.black);
  static const TextStyle text12regular = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat-Regular',
      color: Colors.black);
  static const TextStyle text12white = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat-black',
      color: Colors.white);
  static const TextStyle text12blackbold = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat-Bold',
      color: Colors.black);
  static const TextStyle text12whitebold = TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat-bold',
      color: Colors.white);
}
