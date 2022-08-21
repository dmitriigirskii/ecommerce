import 'package:ecommerce/ui/styles/global.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';
import 'item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: m25, bottom: m10),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: p25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => CategoryItem(category: categories[index]),
        separatorBuilder: (_, __) => const SizedBox(width: m25),
        itemCount: categories.length,
      ),
    );
  }
}
