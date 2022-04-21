import 'dart:math';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:generator/store/my_store.dart';
import 'package:generator/widget/drawer.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    Size screenSize = MediaQuery.of(context).size;
    var mediaWidth = screenSize.width;
    var mediaHeight = screenSize.height;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Store',
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
      body: ListView.builder(
        itemCount: store.product.length,
        itemBuilder: (context, i) {
          return LayoutBuilder(
            builder: (context, constraints) {
              var width = constraints.maxWidth;
              return Container(
                child: Row(
                  children: [
                    Container(
                      width: width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            store.product[i].brand!,
                            style: TextStyle(
                                fontSize: min(mediaWidth, mediaHeight) / 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Hero(
                            tag: store.product[i].id!,
                            child: Image.asset(
                              store.product[i].image!,
                              width: width / 2.5,
                              height: mediaHeight / 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            store.product[i].description!,
                            style: TextStyle(
                              fontSize: min(mediaWidth, mediaHeight) / 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          AutoSizeText("Fuel type: ${store.product[i].fuel}",
                              style: TextStyle(
                                fontSize: min(mediaWidth, mediaHeight) / 35,
                              )),
                          AutoSizeText('Model: ${store.product[i].model}',
                              style: TextStyle(
                                fontSize: min(mediaWidth, mediaHeight) / 35,
                              )),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: min(mediaWidth, mediaHeight) / 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: min(mediaWidth, mediaHeight) / 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: min(mediaWidth, mediaHeight) / 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: min(mediaWidth, mediaHeight) / 20,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.amber,
                                size: min(mediaWidth, mediaHeight) / 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "\$${store.product[i].price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: min(mediaWidth, mediaHeight) / 25,
                            ),
                          ),
                          AutoSizeText(
                            "In-Stock",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: min(mediaWidth, mediaHeight) / 30),
                          ),
                          Container(
                            width: width / 4,
                            child: ElevatedButton(
                              onPressed: () {
                                store.setActiveProduct(store.product[i]);
                                Navigator.pushNamed(context, '/ProductDetails');
                              },
                              child: AutoSizeText('Add to Cart'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
