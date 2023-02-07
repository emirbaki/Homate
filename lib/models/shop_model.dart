import 'package:homate/models/product_model.dart';

import 'comment_model.dart';
import 'cook_model.dart';

class Shop {
  final int shopID;
  final String name;
  final List<Cook> cooks;
  final List<Product> foods;
  final List<Comment> comments;

  Shop(
    this.shopID,
    this.name,
    this.cooks,
    this.foods,
    this.comments,
  );
}
