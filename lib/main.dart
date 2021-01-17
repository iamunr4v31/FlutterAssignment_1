import 'package:flutter/material.dart';
import './control.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  var _textIndex = 0;
  final _textList = const [
    'Some text goes here',
    'The text has changed',
    'The text has changed again',
    'The text has changed once more'
  ];

  void _changeText() {
    setState(() {
      _textIndex == 3 ? _textIndex = 1 : _textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter Assignment'),
        ),
        body: Control(
          stringIndex: _textIndex,
          stringList: _textList,
          selectHandler: _changeText,
        ),
      ),
    );
  }
}
