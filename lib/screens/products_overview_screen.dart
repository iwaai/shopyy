// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../widgets/productsGrid.dart';

enum filterindex { favourites, all }

class product_overview_screen extends StatefulWidget {
  const product_overview_screen({super.key});

  @override
  State<product_overview_screen> createState() =>
      _product_overview_screenState();
}

class _product_overview_screenState extends State<product_overview_screen> {
  bool _setfav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppy'),
        actions: [
          PopupMenuButton(
              onSelected: (filterindex getindex) {
                setState(() {
                  if (getindex == filterindex.favourites) {
                    _setfav = true;
                  } else {
                    _setfav = false;
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      //making enum for this as we require a index for this and enum does that ez pz lemon suiqzy
                      value: filterindex.favourites,
                      child: Text('Favourites'),
                    ),
                    const PopupMenuItem(
                        value: filterindex.all, child: Text('ShowAll'))
                  ])
        ],
      ),
      body: productsGrid(_setfav),
    );
  }
}
