import 'package:redux/redux.dart';
import 'package:thynui/actions/app_actions.dart';

final countReducer = combineReducers<int>([
  TypedReducer<int, AppStartedAction>((state, action) {
    return state + 1;
  }),
]);
