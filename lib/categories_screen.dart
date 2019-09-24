import 'package:flutter/material.dart';

import './dummy-data.dart';
import './category.item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('iMeals'),
        ),
        body: GridView(
          children: DUMMY_CATEGORIES
              .map((catData) => CategoryItem(catData.title, catData.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
