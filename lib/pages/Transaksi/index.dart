import 'package:flutter/material.dart';
import 'package:raya/navigate/BottomApp.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: TransaksiApp(),
      bottomSheet: BottomApp(
        name: "transaksi",
      ),
    ));
  }
}

class TransaksiApp extends StatefulWidget {
  TransaksiApp({Key key}) : super(key: key);

  @override
  _TransaksiAppState createState() => _TransaksiAppState();
}

class _TransaksiAppState extends State<TransaksiApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 5),
      child: Center(
        child: Text("Hello Transaksi"),
      ),
    );
  }
}
