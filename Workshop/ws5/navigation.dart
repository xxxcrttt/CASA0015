import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}


// both pages are stateless, the app context manages the routes
// Context: loosely meaning the app environment  


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
            // context ==> Anonymous function
            // MaterialPageRoute(class): nice transition between the routes  
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondRoute();
            }));
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
            Navigator.pop(context);
          },
          child: Text('Go Back!'),
        ),
      ),
    );
  }
}
