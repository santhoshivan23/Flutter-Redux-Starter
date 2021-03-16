import 'package:flutter_redux_starter/models/launch.dart';
import 'package:flutter_redux_starter/redux/actions/launches_actions.dart';
import 'package:flutter_redux_starter/redux/store.dart';
import 'package:flutter_redux_starter/services/api/APIClient.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> getLaunchesThunk = (Store<AppState> store) async {
  store.dispatch(GetLaunchesLoading());
  try {
    final launches = await APIClient.getAllLaunches();
    store.dispatch(GetLaunchesSuccess(launches: launches));
  } catch (err) {
    store.dispatch(GetLaunchesFailed());
  }
};
