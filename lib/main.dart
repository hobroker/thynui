import 'package:flutter/material.dart';
import 'package:thynui/theme.dart';
import 'package:thynui/ui/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: defaultTheme,
      themeMode: ThemeMode.dark,
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
