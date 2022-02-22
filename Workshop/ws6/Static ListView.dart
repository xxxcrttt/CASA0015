import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('static ListView')),
            body: MyListView()
        )
    );
  }
}

class MyListView extends StatelessWidget {
  final List<Widget> mylist = <Widget>[
    Container(
      height: 50,
      color: Colors.red,
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.green,
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.blue,
      child: const Center(child: Text('Entry C')),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: mylist
    );
  }
}
