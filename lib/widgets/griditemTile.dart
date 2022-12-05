// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shopyy/providers/product.dart';
import '../screens/productDesc.dart';
import 'package:provider/provider.dart';

class griditemTile extends StatelessWidget {
  // final String id;
  // final String imageUrl;
  // final String title;
  // const griditemTile(this.id, this.title, this.imageUrl, {super.key});


  @override
  Widget build(BuildContext context) {
    final singleProductdata = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(
            singleProductdata.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'Poppins'),
          ),
          leading: IconButton(
            icon: Icon(singleProductdata.isFavourite
                ? Icons.favorite
                : Icons.favorite_outline),
            color: Theme.of(context).accentColor,
            onPressed: () {
              singleProductdata.toggleFav();
            },
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(productDesc.routeName,
                arguments: singleProductdata.id);
          },
          child: Image.network(
            singleProductdata.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
