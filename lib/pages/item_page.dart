import 'dart:html';

import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key,
      required this.url,
      required this.name,
      required this.price,
      required this.stock})
      : super(key: key);

  static const routeName = '/item';
  final String url;
  final String name;
  final int price;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            //Achmed Yusuf - 2031710128
            title: const Text('Achmed Cell', textAlign: TextAlign.left),
            backgroundColor: Color.fromARGB(255, 30, 77, 233)),
        body: Container(
          margin: const EdgeInsets.only(top: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Image.asset(
                "assets/img/" + url,
                width: 200,
                height: 200,
              ),
              Container(
                child: Text(
                  '\n Nama Produk : ' +
                      name +
                      '\n Stok : ' +
                      stock.toString() +
                      '\n Harga : ' +
                      '$price',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
