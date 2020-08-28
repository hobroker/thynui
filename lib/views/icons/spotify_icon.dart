import 'package:flutter/material.dart';
import 'package:thynui/modules/asset_path.dart';
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
        image: AssetImage(AssetPath.icons.spotifyBlack),
      ),
    );
  }
}
