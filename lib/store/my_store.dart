import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generator/models/product.dart';

class MyStore extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> _cart = [];
  late Product _activeProduct;

  MyStore() {
    _products = [
      Product(
        image: "assets/NAVIGATOR.jpg",
        brand: "NAVIGATOR",
        model: 'RDE 7000STA',
        price: 1099.99,
        fuel: "Diesel",
        description: '4500 Candle',
        id: 1,
        qty: 0,
      ),
      Product(
        image: "assets/NDL 3000 DXE.jpg",
        brand: "NDL",
        model: '3000 DXE',
        price: 1099.00,
        fuel: "Gas",
        description: '2500 Candle',
        id: 2,
        qty: 0,
      ),
      Product(
        image: "assets/Firman 3800E2.jpg",
        brand: "Firman",
        model: '3800E2',
        price: 1099.00,
        fuel: 'Gas',
        description: '2800 Candle',
        id: 3,
        qty: 0,
      ),
      Product(
        image: "assets/Firman 8800E2.jpg",
        brand: "Firman",
        model: '8800E2',
        price: 1099.00,
        fuel: 'Gas',
        description: '6000 Candle',
        id: 4,
        qty: 0,
      ),
      Product(
        image: "assets/Firman 8800TE2.jpg",
        brand: "Firman",
        model: '8800TE2',
        price: 1099.00,
        fuel: 'Gas',
        description: 'Honda EU2200i - 6000 threeFas',
        id: 5,
        qty: 0,
      ),
      Product(
        image: "assets/Firman 10800E2.jpg",
        brand: "Firman",
        model: '10800E2',
        price: 1099.00,
        fuel: 'Gas',
        description: '7000 Candle',
        id: 6,
        qty: 0,
      ),
      Product(
        image: "assets/Firman SDG13FS.jpg",
        brand: "Firman",
        model: 'SDG13FS',
        price: 1099.00,
        fuel: 'Diesel',
        description: '13000 Candle / 1500 RPM',
        id: 7,
        qty: 0,
      ),
    ];
    notifyListeners();
  } //contractor
  List<Product> get product => _products;
  List<Product> get cart => _cart;
  Product get activeProduct => _activeProduct;

  setActiveProduct(Product p) {
    _activeProduct = p;
  }

  add(Product p){
    p.qty = p.qty! + 1;
    notifyListeners();
  }

  remove(Product p){
    Product f = _cart.firstWhere((element) => element.id==p.id);
    if(f.qty==1)
      {
        p.qty = p.qty! - 1;
        _cart.remove(p);
      }
    else
      {
        p.qty = p.qty! - 1;
      }
    notifyListeners();
  }

  addItemToCart(Product p) {
    if (p.qty == 0) {
      _cart.add(p);
      p.qty = p.qty! + 1;
    } else{
      p.qty = p.qty! + 1;
    }
    notifyListeners();
  }

  removeItemFromCart(Product p) {
    if(p.qty! > 1)
      {
        p.qty = p.qty! - 1;
      }
    else if(p.qty == 1)
      {
        p.qty = p.qty! - 1;
        _cart.remove(p);
      }
    notifyListeners();
  }

  getCartTotal() {
    int total = 0;
    for (int i = 0; i < cart.length; i++) total += cart[i].qty!;
    return total;
  }
}
