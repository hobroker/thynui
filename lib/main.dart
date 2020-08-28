import 'package:flutter/material.dart';
import 'package:thynui/modules/theme.dart';
import 'package:thynui/screens/login/login_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thyn',
      theme: defaultTheme,
      home: LoginScreen(),
    );
  }
}
