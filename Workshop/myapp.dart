import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text text = new Text('XXXCRTTT!');
    Center center = new Center(child: text);
    Scaffold scaffold = new Scaffold(body: center);
    MaterialApp matApp = new MaterialApp(home: scaffold);
    return matApp;
  }
}
