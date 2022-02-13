import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(title: Text('Flutter Basic ListView')),
    body: MyListView()
    )
    );
  }
}

class MyListView extends StatelessWidget {
  final List<Widget> months = [Text('January'), Text('Fabruary'), Text('march')];
  @override 
  Widget build(BuildContext context) {
    return ListView (
    padding: const EdgeInsets.all(20),
    children:months
    );
  }
}
