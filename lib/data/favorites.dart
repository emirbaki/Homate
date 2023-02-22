import 'package:homate/models/product_model.dart';

class FavoritesHandler {
  List<Product> favorites = [];

  void addFavorites(Product food) {
    favorites.add(food);
  }

  void removeFromFavorites(Product food) {
    favorites.remove(food);
  }
}
