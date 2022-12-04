import 'package:flutter/material.dart';
import '../providers/product_provider.dart';

import '../widgets/griditemTile.dart';

import 'package:provider/provider.dart';

class productsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Product_provider>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemBuilder: (ctx, index) => griditemTile(
          products[index].id, products[index].title, products[index].imageUrl),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
