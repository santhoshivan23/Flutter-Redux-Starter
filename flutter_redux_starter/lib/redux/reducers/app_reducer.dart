import 'package:flutter_redux_starter/redux/reducers/launches_reducers.dart';
import 'package:flutter_redux_starter/redux/store.dart';

AppState appReducer(AppState state, action) =>
    AppState(launchesState: launchesReducers(state.launchesState, action));
