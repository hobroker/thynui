import 'package:flutter/material.dart';
import 'package:thynui/actions/app_actions.dart';
import 'package:thynui/screens/login/login_screen.dart';
import 'package:thynui/selectors/count.dart';
import 'package:thynui/store/connector.dart';

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Connector(
      converter: (state, dispatch) => _ViewModel(
        count: getCount(state),
        onLoginClick: () => dispatch(AppStartedAction()),
      ),
      builder: (context, vm) {
        return LoginScreen(
          count: vm.count,
          onLoginClick: vm.onLoginClick,
        );
      },
    );
  }
}

@immutable
class _ViewModel {
  final int count;
  final Function onLoginClick;

  _ViewModel({
    @required this.count,
    @required this.onLoginClick,
  });

  @override
  bool operator ==(other) {
    return other.count == count;
  }

  @override
  int get hashCode => super.hashCode;
}
