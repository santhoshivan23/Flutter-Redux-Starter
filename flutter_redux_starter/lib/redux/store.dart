import 'states/launches_state.dart';

class AppState {
  final LaunchesState launchesState;

  AppState({this.launchesState});

  factory AppState.initial() =>
      AppState(launchesState: LaunchesState.initial());
}
