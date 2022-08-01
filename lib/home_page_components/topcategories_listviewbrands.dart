import 'package:flutter/material.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class TopCategoriesListViewBrands extends StatelessWidget {
  const TopCategoriesListViewBrands({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<CardItem> items;

  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 380,
      left: 25,
      right: 25,
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          separatorBuilder: (context, index) => const SizedBox(
            width: 12,
          ),
          itemBuilder: (context, index) =>
              buildCard(item: items[index]),
        ),
      ),
    );
  }
}

Widget buildCard({
  required CardItem item,
}) =>
    Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(item.title),
          Text(item.subtitle),
        ],
      ),
    );
