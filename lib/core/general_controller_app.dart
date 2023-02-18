import 'package:get_it/get_it.dart';
import 'package:homate/data/favorites.dart';
import 'package:homate/models/product_model.dart';

var getIt = GetIt.instance;

List<Product> favorites = [];

void setup() {
  getIt.registerLazySingleton<FavoritesHandler>(() => FavoritesHandler());
}
