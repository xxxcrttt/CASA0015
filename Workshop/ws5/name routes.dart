import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    routes: {
      "second": (context) {
        return SecondRoute();
      },
      "third": (context) {
        return ThirdRoute();
      }
    },
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Route'),
          onPressed: () {
            Navigator.pushNamed(context, 'second');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'third');
                },
                child: Text('Go Forward!'))));
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
    );
  }
}
