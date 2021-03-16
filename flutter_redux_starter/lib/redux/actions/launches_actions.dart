import 'package:flutter_redux_starter/models/launch.dart';

class GetLaunchesLoading {}

class GetLaunchesSuccess {
  final List<Launch> launches;
  GetLaunchesSuccess({this.launches});
}

class GetLaunchesFailed {}
