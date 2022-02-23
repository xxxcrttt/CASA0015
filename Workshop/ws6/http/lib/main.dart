import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  try {
    runApp(MyApp());
  }catch(e){
    print(e.toString());

  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('HTTP Example')),
            body: MyListView()
        )
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  ListViewState createState() {return ListViewState();}
}

class ListViewState extends State<MyListView> {
  late List<String> books;

  @override
  void initState() {
    super.initState();
    books = [];
    getBooks();
  }

  void updateList(String book) {
    setState(() {
      books.add(book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(books[index]),
        );
      },
    );
  }

  Future<void> getBooks() async {
    final url = Uri.parse('https://www.googleapis.com/books/v1/volumes?q=inauthor:J+K+Rowling');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      final items = jsonResponse['items'];

      for (int i = 0; i < items.length; i++) {
        try {
          String title = items[i]['volumeInfo']['title'];
          updateList(title);
        }catch(e) {
          print('Exception thrown: $e');
        }
      }

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

}