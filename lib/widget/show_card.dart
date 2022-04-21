import 'dart:math';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';

import 'package:flutter/material.dart';

class ShowCard extends StatefulWidget {
  final int? id;
  final String? image;
  final String? brand;
  final String? model;
  String? description;
  final String? fuel;
  final double? kva;
  double? price;

  ShowCard({
    this.id,
    this.image,
    this.brand,
    this.kva,
    this.model,
    this.description,
    this.price,
    this.fuel,
  });

  @override
  _ShowCardState createState() => _ShowCardState();
}

class _ShowCardState extends State<ShowCard> {
  bool inCart = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var mediaWidth = screenSize.width;
    var mediaHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      var width = constraints.maxWidth;
      var height = constraints.maxHeight;
      return Container(
        color: Colors.grey,
        child: Row(
          children: [
            Container(
              width: width / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    widget.brand!,
                    style: TextStyle(
                        fontSize: min(mediaWidth, mediaHeight) / 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Image.asset(
                    widget.image!,
                    width: width / 2.5,
                    height: mediaHeight / 4,
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
                    widget.description!,
                    style: TextStyle(
                      fontSize: min(mediaWidth, mediaHeight) / 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AutoSizeText("Fuel type: ${widget.fuel}",
                      style: TextStyle(
                        fontSize: min(mediaWidth, mediaHeight) / 35,
                      )),
                  AutoSizeText('Model: ${widget.model}',
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
                    "\$${widget.price}",
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
                  // Container(
                  //   width: width/4,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         inCart ? inCart = false : inCart = true;
                  //       });
                  //     },
                  //     child: AutoSizeText('Add to Cart'),
                  //     style: ButtonStyle(
                  //         backgroundColor: MaterialStateProperty.all(Colors.red)),
                  //   ),
                  // )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      );
    });
  }
}
