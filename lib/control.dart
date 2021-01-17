import 'package:flutter/material.dart';
import 'string_output.dart';

class Control extends StatelessWidget {
  final List<String> stringList;
  final int stringIndex;
  final Function selectHandler;
  Control({this.stringList, this.stringIndex, this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ChangedText(text: stringList[stringIndex]),
        RaisedButton(
          child: Text('Change Text'),
          onPressed: selectHandler,
        ),
      ],
    );
  }
}
