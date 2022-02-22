import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Basic Alert Demo')),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
          child: Text('Show alert'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      title: Text("Simple Alert"),
                      content: Text("This is the alert message."),
                      actions: [
                        TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.pop(context);
                            })
                      ]);
                });
          }),
    );
  }
}
