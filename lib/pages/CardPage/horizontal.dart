import 'package:flutter/material.dart';
import 'package:raya/components/CardApp.dart';
import 'package:raya/service/color.dart';

class HorizontalCard extends StatefulWidget {
  HorizontalCard({Key key}) : super(key: key);

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int i) => Row(
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
                )));
  }
}
