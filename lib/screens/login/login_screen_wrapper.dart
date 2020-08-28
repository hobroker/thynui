import 'package:flutter/material.dart';
import 'package:thynui/views/page_wrapper.dart';

class LoginScreenWrapper extends StatelessWidget {
  final Widget heading;
  final Widget subtitle;
  final Widget button;

  const LoginScreenWrapper({
    Key key,
    @required this.heading,
    @required this.subtitle,
    @required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: LayoutBuilder(builder: (context, constraints) {
        var height = constraints.maxHeight;

        return Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 48,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: height / 2,
                alignment: Alignment.bottomLeft,
                child: heading,
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
