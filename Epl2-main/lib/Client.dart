import 'dart:convert';

import 'package:http/http.dart' as http;

class Client {

  static var serverClient = http.Client();

  static Future<dynamic> getRequest(String route) async {

    var response = await serverClient.get(route, headers: {"Authorization" : "bearer 5262d64b892e8d4341"});
    if (response.statusCode == 200) {
      var jsonString = response.body;

      return jsonString;
    } else {
      // return invalid State
      return -1; // Indicator for invalid status code
    }
  }

  static Future<dynamic> postRequest(
      String route, Map<String, dynamic> requestBody) async {

    var response = await serverClient.post(route,
        headers: {'Content-type': 'application/json'},
        body: json.encode(requestBody));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print("Success");
      return jsonString;
    } else
      return -1;
  }
}
