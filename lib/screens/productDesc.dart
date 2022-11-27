// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class productDesc extends StatelessWidget {
  const productDesc({super.key});
  static const routeName = '/product-Description-screen';

  @override
  Widget build(BuildContext context) {
    String Prodcutid = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text("descritionp")),
    );
  }
}
