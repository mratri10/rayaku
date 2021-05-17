import 'package:flutter/material.dart';
import 'package:raya/navigate/BottomApp.dart';
import 'package:raya/navigate/DrawerApp.dart';
import 'package:raya/service/color.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorApp().primary,
            title: Text("Color List"),
          ),
          drawer: DrawerApp(app: "Color"),
          body: ColorFullPage(),
          bottomSheet: BottomApp(
            name: "home",
          )),
    );
  }
}

class ColorFullPage extends StatefulWidget {
  ColorFullPage({Key key}) : super(key: key);

  @override
  _ColorFullPageState createState() => _ColorFullPageState();
}

class _ColorFullPageState extends State<ColorFullPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 5),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "Primary",
                  style: TextStyle(
                      color: ColorApp().white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: new BoxDecoration(color: ColorApp().primary),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Secondary",
                        style: TextStyle(
                            color: ColorApp().light,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: new BoxDecoration(color: ColorApp().secondary),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Success",
                        style: TextStyle(
                            color: ColorApp().dark,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: new BoxDecoration(color: ColorApp().success),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Danger",
                        style: TextStyle(
                            color: ColorApp().white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: new BoxDecoration(color: ColorApp().danger),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Warning",
                        style: TextStyle(
                            color: ColorApp().dark,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: new BoxDecoration(color: ColorApp().warning),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Info",
                        style: TextStyle(
                            color: ColorApp().white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: new BoxDecoration(color: ColorApp().info),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
