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
  var result = '';

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
            Text(result),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Read JSON As String'),
                  onPressed: () async {
                    result = await JSONLoader().getJsonAsString('assets/login_response.json');
                    setState(() {});
                  },
                ),
                SizedBox(width: 16),
                RaisedButton(
                  child: Text('Read JSON As Map'),
                  onPressed: () async {
                    var jsonMap = await JSONLoader().getJsonAsMap('assets/login_response.json');
                    result = jsonMap['message'];
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
