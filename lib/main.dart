import 'package:flutter/material.dart';
import '../screens/products_overview_screen.dart';
import '../screens/productDesc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Poppins',
        // ignore: deprecated_member_use
        accentColor: Colors.teal,
      ),
      home: product_overview_screen(),
      routes: {productDesc.routeName: (context) => productDesc()},
    );
  }
}
