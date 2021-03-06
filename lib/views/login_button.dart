import 'package:flutter/material.dart';
import 'package:thynui/constants/color_constants.dart';
import 'package:thynui/views/icons/spotify_icon.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Function onClick;

  const LoginButton({
    Key key,
    @required this.text,
    this.onClick,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: SpotifyIcon(),
            ),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: ColorConstants.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
