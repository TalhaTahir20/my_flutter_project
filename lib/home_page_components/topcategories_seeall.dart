import 'package:flutter/material.dart';

class TopCategoriesSeeAll extends StatelessWidget {
  const TopCategoriesSeeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 330,
      left: 25,
      child: Row(
        children: [
          const Text(
            'Top Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 23,
            ),
          ),
          const SizedBox(
            width: 130,
          ),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}