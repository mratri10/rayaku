import 'dart:math';

import 'package:flutter/material.dart';
import 'package:raya/navigate/BottomApp.dart';
import 'package:raya/service/color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: ProfileApp(),
            bottomSheet: BottomApp(
              name: "profile",
            )));
  }
}

class ProfileApp extends StatefulWidget {
  ProfileApp({Key key}) : super(key: key);

  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  int rownumb;
  int colnumb;
  String colname;
  List<Widget> rowWidgets;
  List<Widget> colWidgets;
  Random random = Random();

  @override
  void initState() {
    super.initState();
    rownumb = 0;
    colnumb = 0;
    colname = "Add Col";
    rowWidgets = [];
    colWidgets = [];
  }

  rowView() {
    setState(() {
      rowWidgets.add(Expanded(
          child: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
        color: Color.fromARGB(
            255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
      )));
    });
  }

  colView() {
    setState(() {
      colWidgets.add(Container(
        height: 50,
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        color: Color.fromARGB(
            255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorApp().light,
        ),
        Container(
          color: ColorApp().info,
          height: 250,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8)),
                      backgroundColor:
                          MaterialStateProperty.all(ColorApp().success),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)))),
                  child: Text("Add Row",
                      style: TextStyle(
                        color: ColorApp().white,
                      )),
                  onPressed: rowView,
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8)),
                      backgroundColor:
                          MaterialStateProperty.all(ColorApp().danger),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)))),
                  child: Text(colname + " " + (colnumb).toString(),
                      style: TextStyle(
                        color: ColorApp().white,
                      )),
                  onPressed: colView,
                ),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 250, bottom: 50),
            child: ListView(
              children: [
                Container(
                  height: 50,
                ),
                Column(children: colWidgets),
              ],
            )),
        Container(
          height: 120,
          margin: EdgeInsets.only(top: 190, right: 20),
          child: Row(
            children: rowWidgets,
          ),
        ),
      ],
    );
  }
}
