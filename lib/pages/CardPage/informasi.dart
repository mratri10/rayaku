import 'package:flutter/material.dart';
import 'package:raya/components/CardApp.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/service/color.dart';

class InformasiCard extends StatefulWidget {
  InformasiCard({Key key}) : super(key: key);

  @override
  _InformasiCardState createState() => _InformasiCardState();
}

class _InformasiCardState extends State<InformasiCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextFieldApp(
          type: "vip",
          text: "Model Card Informasi",
        ),
        Container(
            width: 250,
            margin: EdgeInsets.only(bottom: 20),
            child: CardApp(
              type: "CardInfo",
              icon: Icons.close,
              child: Icon(
                Icons.wallet_giftcard,
                size: 36,
                color: ColorApp().warning,
              ),
            ))
      ]),
    );
  }
}
