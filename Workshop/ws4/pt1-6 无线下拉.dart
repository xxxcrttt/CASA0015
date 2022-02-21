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

    // update build method
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class _RandomWordsState extends State<RandomWords> {
    // add _suggestions 列表以保存建议的word paring
    final _suggestions = <WordPair>[];
    // add _biggerFont 增大字体
    final _biggerFont = const TextStyle(fontSize: 18);

    // buildSuggestions(): 显示建议的wordpair listview
    Widget _buildSuggestions() {
      return ListView.builder(
        padding: const EdgeInsets.all(16),
        // 每个建议的word pair 都会调用一次 itemBuilder callback， 并将每个建议放入 ListTile 行
        // 对于偶数行，函数为 word pari 添加 ListTile 行
        // 对于奇数行，函数添加一个 DIvider 以直观的分割条目；(在较小的设备商可能很难看到分割线)
        // 在 ListView 中的每一行之前添加 1 pixel 的分割线
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) {
            return const Divider(); /*2*/
          }

          // i ~/2 ==> 将 i 除以 2 并返回一个整数结果
          // 这将计算 ListView 中的实际 word pair num，减去分割线
          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        },
      );
    }

    // 显示每个 new pair
    Widget _buildRow(WordPair pair) {
      return ListTile (
        title: Text (
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    }

    // update build method
    @override
    Widget build(BuildContext context) {
      return Scaffold (
        appBar: AppBar (
          title: const Text ('Startup Name Generator'),
        ),
        body: _buildSuggestions(),
      );
    }

}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

