library jsonloader;

import 'package:flutter/services.dart';

class JSONLoader {
  Future<String> getJsonAsString(String filename) async {
    var jsonString = rootBundle.loadString(filename);
    return jsonString;
  }
}
