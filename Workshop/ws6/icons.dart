import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Icon', home: HomePage(), routes: {
      'list': (context) {
        return MyListView();
      }
    });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            // flutter has hundreds of pre-defined icons 
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, 'list');
            },
            tooltip: 'List months',
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<Widget> months = [
    Text('January'),
    Text('February'),
    Text('March'),
    Text('April'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List View")),
        body: ListView(padding: const EdgeInsets.all(20), children: months));
  }
}
