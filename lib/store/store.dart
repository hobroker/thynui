import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:thynui/epics/app_epic.dart';
import 'package:thynui/models/state/app_state.dart';
import 'package:thynui/reducers/app_reducer.dart';
import 'package:thynui/store/log_middleware.dart';

Store createStore() {
  var epicMiddleware = EpicMiddleware(appEpic);
  var logMiddleware = LogMiddleware();

  var store = Store<AppState>(
    appReducer,
    distinct: true,
    initialState: AppState.init(),
    middleware: [
      epicMiddleware,
      logMiddleware,
    ],
  );

  return store;
}
