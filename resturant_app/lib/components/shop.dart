import 'package:flutter/material.dart';
import 'food_class.dart';

class Shop extends ChangeNotifier {
  List<Food> FoodMenu = [
    Food(
        imagelink: "assets/sushi.png",
        price: "230.00",
        rating: "3.5",
        title: 'Sushi'),
    Food(
        imagelink: "assets/sushi01.png",
        price: "150.00",
        rating: "4.7",
        title: 'Ramen'),
    Food(
        imagelink: "assets/sushi02.png",
        price: "330.00",
        rating: "3.2",
        title: 'Maggie')
  ];

  //customer cart
  List<Food> cart = [];

  //getter methods
  List<Food> get _fooditem => FoodMenu;
  List<Food> get _cart => cart;

  //add to cart
  void addToCart(Food item, int quantity) {
    for (var i = 0; i < quantity; i++) {
      cart.add(item);
    }
    //after adding the notifylistener only we can see the changes in the UI
    notifyListeners();
  }

  //remover from cart
  void removeCart(Food food) {
    cart.remove(food);
  }

//after adding the notifylistener only we can see the changes in the UI
  notifyListeners();
}
