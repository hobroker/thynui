import 'package:flutter/material.dart';
import 'package:thynui/constants/color_constants.dart';

final defaultTheme = ThemeData(
  primaryColor: ColorConstants.primary,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w500,
      color: ColorConstants.white,
    ),
    subtitle1: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: ColorConstants.white,
    ),
  ),
);
