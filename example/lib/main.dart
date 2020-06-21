import 'package:flutter/material.dart';
import 'package:jsonloader/jsonloader.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var jsonString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(jsonString),
            RaisedButton(
              child: Text('Read JSON'),
              onPressed: () async {
                jsonString = await JSONLoader().getJsonAsString('assets/login_response.json');
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
