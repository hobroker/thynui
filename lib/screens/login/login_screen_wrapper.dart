import 'package:flutter/material.dart';
import 'package:thynui/views/page_wrapper.dart';

class LoginScreenWrapper extends StatelessWidget {
  final Widget heading;
  final Widget subtitle;
  final Widget button;

  const LoginScreenWrapper({
    Key key,
    this.heading,
    this.subtitle,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 56,
          ),
          color: Theme.of(context).primaryColor,
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: constraints.maxHeight / 2,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: heading,
                ),
              ),
              subtitle,
              Spacer(),
              button,
            ],
          ),
        );
      }),
    );
  }
}
