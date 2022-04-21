
import 'package:flutter/material.dart';
import 'package:generator/widget/drawer.dart';
import 'package:generator/widget/show_card.dart';

class Items extends StatefulWidget {

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final _generators = <ShowCard>[
    ShowCard(image: "assets/NAVIGATOR.jpg",
      brand: "NAVIGATOR",
      model: 'RDE 7000STA',
      price: 1099.99,
      fuel: "Diesel",
      description: '4500 Candle',
    ),
    ShowCard(image: "assets/NDL 3000 DXE.jpg",
      brand: "NDL",
      model: '3000 DXE',
      price: 1099.00,
      fuel: "Gas",
      description: '2500 Candle',
    ),
    ShowCard(image: "assets/Firman 3800E2.jpg",
      brand: "Firman",
      model: '3800E2',
      price: 1099.00,
      fuel: 'Gas',
      description: '2800 Candle',
    ),
    ShowCard(image: "assets/Firman 8800E2.jpg",
      brand: "Firman",
      model: '8800E2',
      price: 1099.00,
      fuel: 'Gas',
      description: '6000 Candle',
    ),
    ShowCard(image: "assets/Firman 8800TE2.jpg",
      brand: "Firman",
      model: '8800TE2',
      price: 1099.00,
      fuel: 'Gas',
      description: 'Honda EU2200i - 6000 threeFas',
    ),
    ShowCard(image: "assets/Firman 10800E2.jpg",
      brand: "Firman",
      model: '10800E2',
      price: 1099.00,
      fuel: 'Gas',
      description: '7000 Candle',
    ),
    ShowCard(image: "assets/Firman SDG13FS.jpg",
      brand: "Firman",
      model: 'SDG13FS',
      price: 1099.00,
      fuel: 'Diesel',
      description: '13000 Candle / 1500 RPM',
    ),
  ];

  Widget _buildItems() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _generators.length,
        itemBuilder: (context, i) {
          return _generators[i];
        });
  }

  @override
  Widget build(BuildContext context) {
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
    ),
      body: _buildItems(),
    );
  }

}
