import 'package:flutter/material.dart';
import 'package:navigation_and_route/models/item.dart';

class TheCard extends StatelessWidget {
  const TheCard(
      {Key? key,
      required this.url,
      required this.name,
      required this.price,
      required this.stock})
      : super(key: key);
  final String url;
  final String name;
  final int price;
  final int stock;

  //Achmed Yusuf - 2031710128
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/img/" + url,
          width: 200,
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
