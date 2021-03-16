import 'package:flutter/material.dart';
import 'package:flutter_redux_starter/models/launch.dart';

class LaunchCard extends StatelessWidget {
  final Launch launch;

  LaunchCard({this.launch});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: launch.isSuccess ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              launch.missionName,
              textAlign: TextAlign.center,
            ),
            Text(launch.launchYear),
          ],
        ),
      ),
    );
  }
}
