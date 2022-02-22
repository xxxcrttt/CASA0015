import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Dynamic ListView')),
            body: MyListView()
        )
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  ListViewState createState() {return ListViewState();}
}

class ListViewState extends State<MyListView>{
  late List<int> numbers;
  @override
  void initState() {
    super.initState();
    numbers = [];
    startCounting();
  }
  updateList(int i){
    setState(() {
      numbers.add(i);
    });
  }
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(numbers[index].toString()),
        );
      },
    );
  }
  startCounting() async{
    int i = 0;
    while(i < 100) {
      await Future.delayed(Duration(seconds: 5));
      i++;
      updateList(i);
    }
  }
}
