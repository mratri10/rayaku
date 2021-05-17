import 'package:flutter/material.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/pages/CardPage/index.dart';
import 'package:raya/pages/ColorPage/index.dart';
import 'package:raya/service/color.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key key, this.app}) : super(key: key);
  final String app;
  @override
  Widget build(BuildContext context) {
    return DrawerDesign(app: app);
  }
}

class DrawerDesign extends StatefulWidget {
  DrawerDesign({Key key, this.app}) : super(key: key);
  final String app;
  @override
  _DrawerDesignState createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ColorApp().primary)),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new ColorPage()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color:
                        widget.app == "Color" ? ColorApp().transSecond : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldApp(text: "Color List", type: "title"),
                    Icon(
                      Icons.chevron_right,
                      size: 36,
                    )
                  ],
                ))),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new CardPage()));
            },
            child: Container(
                decoration: BoxDecoration(
                    color:
                        widget.app == "Text" ? ColorApp().transSecond : null),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldApp(text: "Card List", type: "title"),
                    Icon(
                      Icons.chevron_right,
                      size: 36,
                    )
                  ],
                )))
      ],
    ));
  }
}
