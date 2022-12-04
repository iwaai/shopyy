// ignore_for_file: prefer_final_fields, camel_case_types
import 'package:flutter/material.dart';
import '../screens/products_overview_screen.dart';
import '../screens/productDesc.dart';

import 'package:provider/provider.dart';
import './providers/product_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Product_provider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: 'Poppins',
          // ignore: deprecated_member_use
          accentColor: Colors.teal,
        ),
        home: const product_overview_screen(),
        routes: {productDesc.routeName: (context) => const productDesc()},
      ),
    );
  }
}
