import 'dart:math';

import 'package:flutter/material.dart';

class BaseIcon extends StatelessWidget {
  final double size;
  final Widget child;

  const BaseIcon({
    Key key,
    @required this.child,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var maxSize = min(constraints.maxHeight, constraints.maxWidth);

        return Container(
          constraints: BoxConstraints(
            maxHeight: size ?? maxSize,
            maxWidth: size ?? maxSize,
          ),
          child: child,
        );
      },
    );
  }
}
