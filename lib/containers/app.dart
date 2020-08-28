import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:thynui/modules/i18n_delegate.dart';
import 'package:thynui/modules/theme.dart';
import 'package:thynui/screens/login/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thyn',
      theme: defaultTheme,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [i18nDelegate],
      supportedLocales: [Locale('en', '')],
      builder: FlutterI18n.rootAppBuilder(),
    );
  }
}
