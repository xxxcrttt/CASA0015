import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';  // import english_words lib

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); 

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          //child: Text('Hello World'),
          //child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
    );
  }
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    //return Container();
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

