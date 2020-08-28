import 'package:flutter/material.dart';
import 'package:thynui/modules/app_colors.dart';
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
    return Container(
      height: 64,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 8),
        color: AppColors.spotifyAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SpotifyIcon(),
            ),
            SizedBox(width: 8),
            Text(
              text.toUpperCase(),
              style: TextStyle(
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
