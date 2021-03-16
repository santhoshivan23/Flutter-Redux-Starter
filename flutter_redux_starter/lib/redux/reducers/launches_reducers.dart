import 'package:flutter/material.dart';
import 'package:flutter_redux_starter/redux/actions/launches_actions.dart';
import 'package:flutter_redux_starter/redux/states/launches_state.dart';
import 'package:redux/redux.dart';

final launchesReducers = combineReducers<LaunchesState>([
  TypedReducer<LaunchesState, GetLaunchesLoading>(_getLaunchesLoading),
  TypedReducer<LaunchesState, GetLaunchesSuccess>(_getLaunchesSuccess),
  TypedReducer<LaunchesState, GetLaunchesFailed>(_getLaunchesFailed),
]);

LaunchesState _getLaunchesLoading(
        LaunchesState state, GetLaunchesLoading action) =>
    state.copyWith(connectionState: ConnectionState.waiting);

LaunchesState _getLaunchesSuccess(
        LaunchesState state, GetLaunchesSuccess action) =>
    state.copyWith(
        connectionState: ConnectionState.done, launches: action.launches);

LaunchesState _getLaunchesFailed(
        LaunchesState state, GetLaunchesFailed action) =>
    state.copyWith(connectionState: ConnectionState.done, isError: true);
