
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:dawra/widgets/app_data.dart';
import 'package:flutter/material.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
      return GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) =>CategoryItem(
            categoryData.id,
            categoryData.title,
            categoryData.imageUrl,
            ),
        ).toList(),
    );
  }
}
