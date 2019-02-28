import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     title: 'Welcome to Flutter',
        home: new Scaffold(
        appBar: new AppBar(
        title: const Text('Welcome to Flutter'),
     ),

         body: new Center(
           child: new RandomWords(),
          ),
        ),
    );
}
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}