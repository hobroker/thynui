import 'package:flutter/foundation.dart';

@immutable
class AppState {
  final int count;

  AppState({
    this.count,
  });

  factory AppState.init() {
    return AppState(
      count: 1,
    );
  }

  @override
  bool operator ==(other) {
    return other is AppState && other.count == count;
  }

  @override
  int get hashCode => super.hashCode;
}
