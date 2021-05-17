import 'package:flutter/material.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/service/color.dart';

class CardApp extends StatefulWidget {
  CardApp(
      {Key key,
      this.type,
      this.text,
      this.icon,
      this.warna,
      this.transWarna,
      this.colorType,
      this.child,
      this.imageAsset})
      : super(key: key);
  final String type;
  final String text;
  final IconData icon;
  final Color warna;
  final Color transWarna;
  final String colorType;
  final String imageAsset;
  final Widget child;

  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case "CardLogoText":
        return cardLogoText(context);
      case "CardShop":
        return cardShop(context);
      case "CardInfo":
        return cardInfo(context);
      default:
        return noCard(context);
    }
  }

  Widget noCard(context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: widget.transWarna,
        ),
        child: Text(
          widget.text,
          style: TextStyle(color: widget.warna, fontSize: 12),
        ));
  }

  Widget cardLogoText(context) {
    return Column(
      children: [
        Card(
          shadowColor:
              widget.colorType == "outline" ? widget.warna : ColorApp().dark,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5.0,
          color:
              widget.colorType != "outline" ? widget.warna : ColorApp().white,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                widget.icon,
                color: widget.colorType == "outline"
                    ? widget.warna
                    : ColorApp().white,
              )),
        ),
        widget.text != null
            ? Text(
                widget.text,
                style: TextStyle(
                  fontSize: 12,
                  color: widget.colorType == "outline"
                      ? widget.warna
                      : Colors.black,
                ),
              )
            : Container()
      ],
    );
  }

  Widget cardShop(context) {
    return Card(
      shadowColor:
          widget.colorType == "outline" ? widget.warna : ColorApp().dark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5.0,
      color: ColorApp().light,
      child: Column(children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(widget.imageAsset), fit: BoxFit.contain)),
            height: 120,
            width: 120,
            margin: EdgeInsets.all(10)),
        Container(
            child: Row(children: [widget.child]),
            margin: EdgeInsets.fromLTRB(10, 0, 0, 10))
      ]),
    );
  }

  Widget cardInfo(context) {
    return (Card(
        shadowColor:
            widget.colorType == "outline" ? widget.warna : ColorApp().dark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5.0,
        color: ColorApp().white,
        child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFieldApp(
                      type: 'normal',
                      text: "Informasi",
                    ),
                    Icon(widget.icon)
                  ],
                ),
                margin: EdgeInsets.all(10),
              ),
              Container(height: 2, color: Colors.black),
              Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      widget.child != null
                          ? Container(
                              child: widget.child,
                              margin: EdgeInsets.only(right: 20))
                          : null,
                      TextFieldApp(
                          type: "normal",
                          text:
                              "halo semua, ini adalah design card informasi. Design ini adalah design yang biasa kita temukan diberbagai aplikasi")
                    ],
                  ))
            ]))));
  }
}
