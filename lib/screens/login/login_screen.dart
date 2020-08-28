import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:thynui/screens/login/login_screen_wrapper.dart';
import 'package:thynui/views/spotify_login_button.dart';

class LoginScreen extends StatelessWidget {
  final int count;
  final Function onLoginClick;

  const LoginScreen({
    Key key,
    this.count,
    this.onLoginClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreenWrapper(
      heading: Text(
        FlutterI18n.translate(context, 'login.heading'),
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text(
        FlutterI18n.translate(
          context,
          'login.subtitle',
          translationParams: {'count': count.toString()},
        ),
        style: Theme.of(context).textTheme.subtitle1,
      ),
      button: SpotifyLoginButton(
        text: FlutterI18n.translate(context, 'login.button_text'),
        onClick: onLoginClick,
      ),
    );
  }
}
