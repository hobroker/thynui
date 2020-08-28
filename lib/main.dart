import 'package:flutter/material.dart';
import 'package:thynui/containers/app.dart';
import 'package:thynui/store/store.dart';

void main() {
  var store = createStore();

  runApp(App(
    store: store,
  ));
}
