import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:thynui/screens/login/login_screen_wrapper.dart';
import 'package:thynui/util/noop.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginScreenWrapper(
      heading: Text(
        FlutterI18n.translate(context, 'login.heading'),
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text(
        FlutterI18n.translate(context, 'login.subtitle'),
        style: Theme.of(context).textTheme.subtitle1,
      ),
      button: ButtonTheme(
        height: 64,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          onPressed: noop,
          child: Text(
            FlutterI18n.translate(context, 'login.button_text'),
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
