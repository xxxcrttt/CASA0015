import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  title: 'Returning data',
  home: ScreenOne(),
  ));
}

// The return data is expected sometime in the future, 
// we push the second screen in an async function.
// The data is returned when we pop the second screen.

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('returning data demp'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          navigatedAndDispaySelection(context);
        },
        child: Text('Pick an option, any option!'),
      )),
    );
  }

  void navigatedAndDispaySelection(BuildContext context) async {
    String result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ScreenTwo()));
    print(result);
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "Yes!");
                  },
                  child: Text("Yes!")),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "No!");
                  },
                  child: Text("No")),
            )
          ],
        ),
      ),
    );
  }
}
