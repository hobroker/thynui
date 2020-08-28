import 'package:redux_epics/redux_epics.dart';
import 'package:thynui/models/state/app_state.dart';

import 'startup.dart';

final appEpic = combineEpics<AppState>([
  startupEpics,
]);
