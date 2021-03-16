import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_starter/redux/states/launches_state.dart';
import 'package:flutter_redux_starter/redux/store.dart';
import 'package:flutter_redux_starter/redux/thunks/launches_thunks.dart';
import 'package:flutter_redux_starter/widgets/launch_card.dart';

class LaunchesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LaunchesState>(
        onInit: (store) => store.dispatch(getLaunchesThunk),
        converter: (store) => store.state.launchesState,
        builder: (context, vm) {
          if (vm.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          else if (vm.launches.length > 0)
            return ListView.builder(
                itemCount: vm.launches.length,
                itemBuilder: (ctx, index) => LaunchCard(
                      launch: vm.launches[index],
                    ));
          return Center(
            child: Text('An error occured!'),
          );
        });
  }
}
