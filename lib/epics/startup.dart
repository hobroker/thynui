import 'package:redux_epics/redux_epics.dart';
import 'package:thynui/actions/app_actions.dart';
import 'package:thynui/models/state/app_state.dart';

Stream fetchTrackOnStartEpic(Stream actions, store) => actions
    .where((action) => action is AppStartedAction)
    .where((action) => false);

final startupEpics = combineEpics<AppState>([
  fetchTrackOnStartEpic,
]);
