import 'package:flutter/material.dart';
import 'package:raya/components/CardApp.dart';
import 'package:raya/service/color.dart';

class IconCard extends StatefulWidget {
  IconCard({Key key}) : super(key: key);

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Text(
          "Model Card Untuk Icon",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardApp(
              icon: Icons.home,
              text: "Home",
              type: "CardLogoText",
              warna: ColorApp().primary,
            ),
            CardApp(
              icon: Icons.phone,
              text: "Phone",
              type: "CardLogoText",
              colorType: "outline",
              warna: ColorApp().info,
            ),
            CardApp(
              icon: Icons.mail,
              text: "Mail",
              type: "CardLogoText",
              warna: ColorApp().secondary,
            ),
            CardApp(
              icon: Icons.map,
              text: "Map",
              type: "CardLogoText",
              colorType: "outline",
              warna: ColorApp().warning,
            ),
          ],
        )
      ]),
    );
  }
}
