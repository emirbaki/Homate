import 'package:flutter/material.dart';

class Product {
  final int foodID;
  final String name;
  final String description;
  final int price;
  final int gram;
  final FoodType foodType;
  final List<Image> foodImages;

  Product(
    this.foodID,
    this.name,
    this.price,
    this.gram,
    this.foodType,
    this.foodImages,
    this.description,
  );
}

enum FoodType {
  sulu,
  icecek,
  hamurisi,
  evyemegi,
}
