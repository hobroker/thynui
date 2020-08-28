import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:thynui/modules/theme.dart';
import 'package:thynui/screens/login/login_screen.dart';

class App extends StatelessWidget {
  final FlutterI18nDelegate localizationsDelegate;

  const App({Key key, this.localizationsDelegate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thyn',
      theme: defaultTheme,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [localizationsDelegate],
      supportedLocales: [Locale('en', '')],
      builder: FlutterI18n.rootAppBuilder(),
    );
  }
}
