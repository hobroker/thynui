import 'package:thynui/models/state/app_state.dart';

import 'count_reducer.dart';

AppState appReducer(AppState state, action) {
  if (action == null) {
    return state;
  }

  return AppState(
    count: countReducer(state.count, action),
  );
}
