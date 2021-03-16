import 'package:flutter/material.dart';
import 'package:flutter_redux_starter/widgets/launches_list.dart';

class LaunchesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceX Launches'),
      ),
      body: LaunchesList(),
    );
  }
}
