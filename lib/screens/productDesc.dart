// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../providers/product_provider.dart';
import 'package:provider/provider.dart';

class productDesc extends StatelessWidget {
  const productDesc({super.key});
  static const routeName = '/product-Description-screen';

  @override
  Widget build(BuildContext context) {
    String Prodcutid = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProducts = Provider.of<Product_provider>(context, listen: false)
        .getProductbyId(Prodcutid);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProducts.title)),
    );
  }
}
