import 'package:flutter/material.dart';
import 'package:flutter_redux_starter/models/launch.dart';

class LaunchesState {
  final ConnectionState connectionState;
  final List<Launch> launches;
  final bool isError;

  LaunchesState({this.launches, this.connectionState, this.isError});

  factory LaunchesState.initial() => LaunchesState(
      connectionState: ConnectionState.waiting, launches: [], isError: false);

  LaunchesState copyWith(
          {ConnectionState connectionState,
          List<Launch> launches,
          bool isError}) =>
      LaunchesState(
        connectionState: connectionState ?? ConnectionState.waiting,
        launches: launches ?? [],
        isError: isError ?? false,
      );
}
