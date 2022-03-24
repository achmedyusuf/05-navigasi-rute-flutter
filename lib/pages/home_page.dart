import 'package:flutter/material.dart';
import 'package:navigation_and_route/models/item.dart';
import 'package:navigation_and_route/widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        url: 'a03core.jpg',
        name: 'Samsung A03 Core',
        stock: 10,
        price: 1299999),
    Item(url: 'reno4.jpg', name: 'Oppo Reno 4', stock: 7, price: 4199999),
    Item(url: 'reno7.jpg', name: 'Oppo Reno 7', stock: 3, price: 6399999),
    Item(
        url: 'note20ultra.jpg',
        name: 'Samsung Note 20Ultra',
        stock: 3,
        price: 22999999),
  ];
  //Achmed Yusuf - 2031710128
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Achmed Cell', textAlign: TextAlign.left),
          backgroundColor: Color.fromARGB(255, 30, 77, 233)),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(items: items),
      ),
    );
  }
}
