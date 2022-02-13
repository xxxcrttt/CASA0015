import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation basics',
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
        body: GestureDetector(
            child: Center(child: Text('First Route')),
            onTap: () {
              Navigator.pushNamed(context, 'second');
            }));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: GestureDetector(
            child: Center(child: Text('Second Route')),
            onTap: () {
              Navigator.pushNamed(context, 'third');
            }));
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
