import 'package:flutter/material.dart';
import 'package:thynui/constants/asset_constants.dart';
import 'package:thynui/views/icons/base_icon.dart';

class SpotifyIcon extends StatelessWidget {
  final double size;

  const SpotifyIcon({
    Key key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseIcon(
      size: size,
      child: Image(
        image: AssetImage(AssetConstants.icons.spotifyBlack),
      ),
    );
  }
}
