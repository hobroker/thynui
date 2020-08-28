import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:thynui/models/state/app_state.dart';

class Connector<ViewModel> extends StatelessWidget {
  final Function(AppState, Function(dynamic)) converter;
  final Function(BuildContext, ViewModel) builder;

  Connector({this.converter, this.builder});

  factory Connector.state({
    Function(AppState) converter,
    Function(BuildContext, ViewModel) builder,
  }) {
    return Connector(
      converter: (state, dispatch) => converter(state),
      builder: builder,
    );
  }

  factory Connector.dispatch({
    Function(Function(dynamic)) converter,
    Function(BuildContext, ViewModel) builder,
  }) {
    return Connector(
      converter: (state, dispatch) => converter(dispatch),
      builder: builder,
    );
  }

  bool _onWillChange(prev, next) => prev != next;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      distinct: true,
      onWillChange: _onWillChange,
      converter: (Store store) => converter(store.state, store.dispatch),
      builder: builder,
    );
  }
}
