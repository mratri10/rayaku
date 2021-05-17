import 'package:flutter/material.dart';
import 'package:raya/components/CardApp.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/navigate/DrawerApp.dart';
import 'package:raya/pages/CardPage/horizontal.dart';
import 'package:raya/pages/CardPage/icon.dart';
import 'package:raya/pages/CardPage/image.dart';
import 'package:raya/pages/CardPage/informasi.dart';
import 'package:raya/service/color.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorApp().primary,
            title: Text("Card List"),
          ),
          drawer: DrawerApp(app: "Text"),
          body: ColorList()),
    );
  }
}

class ColorList extends StatefulWidget {
  ColorList({Key key}) : super(key: key);

  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [IconCard(), ImageCard(), InformasiCard(), HorizontalCard()]);
  }
}
