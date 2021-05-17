import 'package:flutter/material.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/pages/ColorPage/index.dart';
import 'package:raya/service/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // drawer: DrawerApp(app: "Color"),
          body: Container(
              color: ColorApp().primary,
              child: Center(
                child: Rayaku(),
              ))),
    );
  }
}

class Rayaku extends StatefulWidget {
  Rayaku({Key key}) : super(key: key);

  @override
  _RayakuState createState() => _RayakuState();
}

class _RayakuState extends State<Rayaku> {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => ColorPage()));
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/background.jpg"))),
        ),
        Container(
            margin: EdgeInsets.only(top: 20),
            child: TextFieldApp(
                text: "My Girl", type: "vip", warna: ColorApp().white)),
        Container(
            child: TextFieldApp(
          text: "Rayaku adalah Rinduku",
          type: "title",
          warna: ColorApp().info,
        ))
      ],
    );
  }
}
