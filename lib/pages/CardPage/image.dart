import 'package:flutter/material.dart';
import 'package:raya/components/CardApp.dart';
import 'package:raya/components/TextField.dart';
import 'package:raya/service/color.dart';

class ImageCard extends StatefulWidget {
  ImageCard({Key key}) : super(key: key);

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          TextFieldApp(
            type: "vip",
            text: "Model Card Shop List",
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int i) => Row(
                        children: [
                          Container(
                              width: 150,
                              child: CardApp(
                                type: "CardShop",
                                imageAsset: "images/celana.jpg",
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldApp(
                                        text: "Celana Lebaran",
                                        type: "title",
                                      ),
                                      TextFieldApp(
                                        text: "Rp 125.000",
                                        type: "subtitle",
                                        warna: ColorApp().info,
                                      ),
                                      Row(
                                        children: [
                                          TextFieldApp(
                                            text: "Rp 900.000",
                                            type: "wrong",
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: CardApp(
                                              text: "95%",
                                              warna: ColorApp().danger,
                                              transWarna:
                                                  ColorApp().transDanger,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              )),
                          Container(
                              width: 150,
                              child: CardApp(
                                type: "CardShop",
                                imageAsset: "images/sepatu.jpg",
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldApp(
                                        text: "Sepatu Lebaran",
                                        type: "title",
                                      ),
                                      TextFieldApp(
                                        text: "Rp 650.000",
                                        type: "subtitle",
                                        warna: ColorApp().info,
                                      ),
                                      Row(
                                        children: [
                                          TextFieldApp(
                                            text: "Rp 900.000",
                                            type: "wrong",
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: CardApp(
                                              text: "30%",
                                              warna: ColorApp().danger,
                                              transWarna:
                                                  ColorApp().transDanger,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              )),
                          Container(
                              width: 150,
                              child: CardApp(
                                type: "CardShop",
                                imageAsset: "images/baju.jpg",
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldApp(
                                        text: "Baju Lebaran",
                                        type: "title",
                                      ),
                                      TextFieldApp(
                                        text: "Rp 65.000",
                                        type: "subtitle",
                                        warna: ColorApp().info,
                                      ),
                                      Row(
                                        children: [
                                          TextFieldApp(
                                            text: "Rp 90.000",
                                            type: "wrong",
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: CardApp(
                                              text: "80%",
                                              warna: ColorApp().danger,
                                              transWarna:
                                                  ColorApp().transDanger,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              )),
                          Container(
                              width: 150,
                              child: CardApp(
                                type: "CardShop",
                                imageAsset: "images/laptop.jpg",
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFieldApp(
                                        text: "Laptop Promo",
                                        type: "title",
                                      ),
                                      TextFieldApp(
                                        text: "Rp 9.165.000",
                                        type: "subtitle",
                                        warna: ColorApp().info,
                                      ),
                                      Row(
                                        children: [
                                          TextFieldApp(
                                            text: "Rp 11.190.000",
                                            type: "wrong",
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: CardApp(
                                              text: "80%",
                                              warna: ColorApp().danger,
                                              transWarna:
                                                  ColorApp().transDanger,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              )),
                        ],
                      )))
        ],
      ),
    );
  }
}
