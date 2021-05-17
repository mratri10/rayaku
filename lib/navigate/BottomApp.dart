import 'package:flutter/material.dart';
import 'package:raya/pages/ColorPage/index.dart';
import 'package:raya/pages/Profile/index.dart';
import 'package:raya/pages/Transaksi/index.dart';
import 'package:raya/service/color.dart';

class BottomApp extends StatefulWidget {
  BottomApp({Key key, this.name}) : super(key: key);

  final String name;
  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                widget.name == "home" ? ColorApp().primary : ColorApp().white,
              )),
              child: AnimatedContainer(
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 2),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: widget.name != "home"
                        ? ColorApp().primary
                        : ColorApp().white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorPage()));
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                widget.name == "profile"
                    ? ColorApp().primary
                    : ColorApp().white,
              )),
              child: AnimatedContainer(
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 2),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: widget.name != "profile"
                        ? ColorApp().primary
                        : ColorApp().white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                widget.name == "transaksi"
                    ? ColorApp().primary
                    : ColorApp().white,
              )),
              child: AnimatedContainer(
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 2),
                child: Text(
                  "Transaksi",
                  style: TextStyle(
                    color: widget.name != "transaksi"
                        ? ColorApp().primary
                        : ColorApp().white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransaksiPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
