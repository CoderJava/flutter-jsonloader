library jsonloader;

import 'dart:convert';

import 'package:flutter/services.dart';

class JSONLoader {
  /// Retrieve a string from the JSON file.
  ///
  /// Throws an exception if the file is not found.
  Future<String> getJsonAsString(String filename) async {
    var jsonString = rootBundle.loadString(filename);
    return jsonString;
  }

  /// Retrieve a map from the JSON file.
  ///
  /// Throws an exception if the file is not found.
  Future<Map<String, dynamic>> getJsonAsMap(String filename) async {
    var jsonString = await rootBundle.loadString(filename);
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return jsonMap;
  }
}
