import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_starter/redux/redux.dart';

import 'screens/launches_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = Redux.store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter-Redux-Starter',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LaunchesScreen(),
      ),
    );
  }
}
