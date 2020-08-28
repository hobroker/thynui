import 'package:flutter/material.dart';
import 'package:thynui/constants/color_constants.dart';
import 'package:thynui/views/icons/spotify_icon.dart';

class SpotifyLoginButton extends StatelessWidget {
  final String text;
  final Function onClick;

  const SpotifyLoginButton({
    Key key,
    @required this.text,
    @required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: ColorConstants.spotifyAccent,
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
