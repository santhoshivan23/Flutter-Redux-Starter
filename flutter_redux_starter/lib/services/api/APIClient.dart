import 'dart:convert';

import 'package:flutter_redux_starter/models/launch.dart';
import 'package:http/http.dart' as http;

class APIClient {
  static Future<List<Launch>> getAllLaunches() async {
    const url = 'https://api.spacexdata.com/v3/launches?limit=30&order=desc';
    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final launchesList = jsonDecode(response.body) as List;
      final launches =
          launchesList.map((launch) => Launch.fromJSON(launch)).toList();
      return launches;
    } else {
      throw Exception();
    }
  }
}
