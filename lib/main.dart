import 'package:flutter/material.dart';
import 'package:thynui/containers/app.dart';
import 'package:thynui/modules/i18n_delegate.dart';

void main() {
  runApp(App(
    localizationsDelegate: i18nDelegate,
  ));
}
