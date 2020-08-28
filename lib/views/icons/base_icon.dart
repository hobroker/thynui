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
    return Container(
      constraints: BoxConstraints(
        maxHeight: size,
        maxWidth: size,
      ),
      child: child,
    );
  }
}
