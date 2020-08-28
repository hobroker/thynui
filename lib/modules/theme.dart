import 'package:flutter/material.dart';

final _primaryColor = Color(0xff363D7A);

final defaultTheme = ThemeData(
  primaryColor: _primaryColor,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
);
