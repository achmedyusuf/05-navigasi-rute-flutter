import 'package:flutter/material.dart';
import 'package:navigation_and_route/models/item.dart';
import 'package:navigation_and_route/pages/item_page.dart';
import 'package:navigation_and_route/widgets/card.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  //Achmed Yusuf - 2031710128
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
            onTap: () {
              Navigator.pushNamed(context, ItemPage.routeName, arguments: item);
            },
            child: TheCard(
              url: item.url,
              name: item.name,
              price: item.price,
              stock: item.stock,
            ));
      },
    );
  }
}
