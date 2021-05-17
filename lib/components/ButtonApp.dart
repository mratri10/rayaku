import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {
  ButtonApp({Key key, this.text}) : super(key: key);

  final String text;
  @override
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(widget.text),
        onPressed: () {},
      ),
    );
  }

  String data() {
    return widget.text;
  }
}
