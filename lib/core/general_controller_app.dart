import 'package:get_it/get_it.dart';
import 'package:homate/data/favorites.dart';

var getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<FavoritesHandler>(() => FavoritesHandler());
}
