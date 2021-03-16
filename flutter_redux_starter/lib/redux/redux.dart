import 'package:flutter_redux_starter/redux/store.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'reducers/app_reducer.dart';

class Redux {
  static final Store<AppState> _store = Store<AppState>(
    appReducer,
    initialState: new AppState.initial(),
    middleware: [thunkMiddleware],
  );

  static Store<AppState> get store => _store;
}
