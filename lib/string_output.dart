import 'package:flutter/material.dart';

class ChangedText extends StatelessWidget {
  final String text;
  ChangedText({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 36,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
