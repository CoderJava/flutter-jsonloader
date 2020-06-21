# jsonloader

JSON Loader Package to read JSON from asset.

![Logo Flutter JSON LOADER](https://github.com/CoderJava/flutter-jsonloader/blob/master/logo_package.png "Logo Flutter JSON Loader")

## Features

* Load and read JSON from assets.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  jsonloader: ^1.0.0
```

In your library add the following import:

```dart
import 'package:jsonloader/jsonloader.dart';
```

## Super Simple To Use
```dart
import 'package:jsonloader/jsonloader.dart';

void main() async {
  var jsonString = await JSONLoader().getJsonAsString('assets/login_response.json');
  print('jsonString: $jsonString');
}
```
