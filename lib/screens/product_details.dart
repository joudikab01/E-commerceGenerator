import 'dart:math';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:generator/store/my_store.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    Size screenSize = MediaQuery.of(context).size;
    var mediaWidth = screenSize.width;
    var mediaHeight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.red, Colors.blue])),
        ),
        actions: [
          InkWell(
            child: Row(children: [Text(store.getCartTotal().toString()),Icon(Icons.shopping_cart)]),
            onTap: () {
              Navigator.pushNamed(context, '/Cart');
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText(
            store.activeProduct.brand!,
            style: TextStyle(
                fontSize: min(mediaWidth, mediaHeight) / 25,
                fontWeight: FontWeight.bold,
                color: Colors.red),
          ),
          Hero(
            tag: store.activeProduct.id!,
            child: Image.asset(
              store.activeProduct.image!,
              width: mediaWidth,
              height: mediaHeight / 2.5,
            ),
          ),
          SizedBox(
            height: mediaHeight / 3.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                      store.removeItemFromCart(store.activeProduct);
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.blue[900],
                  )),
              Container(
                child: AutoSizeText(
                  store.activeProduct.qty.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              IconButton(
                  onPressed: () {
                    store.addItemToCart(store.activeProduct);
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.red[900],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
