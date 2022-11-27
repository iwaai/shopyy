// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../widgets/productsGrid.dart';

class product_overview_screen extends StatelessWidget {
  const product_overview_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppy'),
      ),
      body: productsGrid(),
    );
  }
}
