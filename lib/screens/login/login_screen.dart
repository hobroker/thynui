import 'package:flutter/material.dart';
import 'package:thynui/screens/login/login_screen_wrapper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginScreenWrapper(
      heading: Text(
        'Thyn',
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text(
        'Some other text right here',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      button: ButtonTheme(
        height: 64,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          onPressed: () {
            print('pressed');
          },
          child: Text(
            'Login',
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
