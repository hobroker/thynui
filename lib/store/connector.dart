import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:thynui/models/state/app_state.dart';

class Connector<ViewModel> extends StatelessWidget {
  final Function(Store<AppState> store) converter;
  final Function(BuildContext context, ViewModel vm) builder;

  Connector({this.converter, this.builder});

  factory Connector.state({
    Function(AppState state) converter,
    Function(BuildContext context, ViewModel vm) builder,
  }) {
    return Connector(
      converter: (store) => converter(store.state),
      builder: builder,
    );
  }

  bool _onWillChange(prev, next) => prev != next;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      distinct: true,
      onWillChange: _onWillChange,
      converter: converter,
      builder: builder,
    );
  }
}
