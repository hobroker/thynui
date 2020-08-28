import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:thynui/actions/app_actions.dart';
import 'package:thynui/containers/login_container.dart';
import 'package:thynui/models/state/app_state.dart';
import 'package:thynui/modules/i18n_delegate.dart';
import 'package:thynui/modules/theme.dart';

class App extends StatefulWidget {
  final Store<AppState> store;

  const App({Key key, this.store}) : super(key: key);

  void onInit() {
    store.dispatch(AppStartedAction());
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    widget.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: widget.store,
      child: MaterialApp(
        title: 'Thyn',
        theme: defaultTheme,
        home: LoginContainer(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [i18nDelegate],
        supportedLocales: [Locale('en', '')],
        builder: FlutterI18n.rootAppBuilder(),
      ),
    );
  }
}
