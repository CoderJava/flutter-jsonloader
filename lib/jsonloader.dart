library jsonloader;

import 'package:flutter/services.dart';

class JSONLoader {
  /// Retrieve a string from the JSON file.
  ///
  /// Throws an exception if the file is not found.
  Future<String> getJsonAsString(String filename) async {
    var jsonString = rootBundle.loadString(filename);
    return jsonString;
  }
}
