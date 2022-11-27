import 'package:flutter/material.dart';

import './products_overview_screen.dart';

class productDesc extends StatelessWidget {
  const productDesc({super.key});
  static const routeName = '/product-Description-screen';

  @override
  Widget build(BuildContext context) {
    String Prodcutid = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text()),
    );
  }
}
