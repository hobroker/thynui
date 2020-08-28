import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:thynui/constants/color_constants.dart';
import 'package:thynui/screens/login/login_screen_wrapper.dart';
import 'package:thynui/views/login_button.dart';

class LoginScreen extends StatelessWidget {
  final int count;
  final Function onLoginClick;

  const LoginScreen({
    Key key,
    @required this.count,
    @required this.onLoginClick,
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
      footer: LoginButton(
        text: FlutterI18n.translate(context, 'login.connect_with_spotify'),
        backgroundColor: ColorConstants.spotifyAccent,
        onClick: onLoginClick,
      ),
    );
  }
}
