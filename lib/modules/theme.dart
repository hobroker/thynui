import 'package:flutter/material.dart';
import 'package:thynui/modules/app_colors.dart';

final defaultTheme = ThemeData(
  primaryColor: AppColors.primary,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      color: AppColors.white,
    ),
  ),
);
