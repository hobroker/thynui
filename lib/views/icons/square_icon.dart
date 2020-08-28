import 'dart:math';

import 'package:flutter/material.dart';

abstract class SquareIcon extends StatelessWidget {
  final double size;

  const SquareIcon({
    Key key,
    this.size,
  }) : super(key: key);

  String get iconPath => null;

  @override
  Widget build(BuildContext context) {
    assert(iconPath != null);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var maxSize = min(constraints.maxHeight, constraints.maxWidth);

        return Container(
          constraints: BoxConstraints(
            maxHeight: size ?? maxSize,
            maxWidth: size ?? maxSize,
          ),
          child: Image(image: AssetImage(iconPath)),
        );
      },
    );
  }
}
