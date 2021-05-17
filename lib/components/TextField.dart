import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  TextFieldApp({Key key, this.text, this.type, this.warna}) : super(key: key);

  final String text;
  final String type;
  final Color warna;
  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case "vip":
        return vip(context);
      case "title":
        return titleText(context);
      case "subtitle":
        return subText(context);
      case "wrong":
        return wrongText(context);
      default:
        return normal(context);
    }
  }

  Widget vip(context) {
    return Text(
      widget.text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: widget.warna),
    );
  }

  Widget normal(context) {
    return Flexible(
        child: Text(
      widget.text,
      style: TextStyle(fontSize: 12),
      textAlign: TextAlign.left,
      softWrap: true,
    ));
  }

  Widget titleText(context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: widget.warna),
    );
  }

  Widget subText(context) {
    return Text(widget.text,
        style: TextStyle(fontWeight: FontWeight.bold, color: widget.warna));
  }

  String halor() {
    return widget.text;
  }

  Widget wrongText(context) {
    return Text(widget.text,
        style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
        ));
  }
}
