import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:generator/store/my_store.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    Size screenSize = MediaQuery.of(context).size;
    // var mediaWidth = screenSize.width;
    var mediaHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.red, Colors.blue])),
        ),
      ),
      body: ListView.builder(
        itemCount: store.cart.length,
        itemBuilder: (context, i) {
          return LayoutBuilder(
            builder: (context, constraints) {
              var width = constraints.maxWidth;
              return Row(
                children: [
                  Container(
                    child: Image.asset(
                      store.cart[i].image!,
                      width: width / 2.5,
                      height: mediaHeight / 4,
                    ),
                  ),
                  Container(
                    child: AutoSizeText(store.cart[i].model!),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            store.remove(store.cart[i]);
                            // store.setActiveProduct(store.product[i]);
                            // store.remove(store.activeProduct);
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.blue[900],
                          )),
                      Container(
                        child: AutoSizeText(
                          store.cart[i].qty.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          store.add(store.cart[i]);
                          // store.setActiveProduct(store.product[i]);
                          // store.add(store.activeProduct);
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.red[900],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
