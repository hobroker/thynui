import 'package:flutter/material.dart';
import 'package:thynui/modules/app_colors.dart';
import 'package:thynui/modules/asset_path.dart';

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
    return ButtonTheme(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 64),
      child: RaisedButton(
        color: AppColors.spotifyAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        onPressed: onClick,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 32,
              height: 32,
              fit: BoxFit.fill,
              image: AssetImage(AssetPath.icons.spotifyBlack),
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
