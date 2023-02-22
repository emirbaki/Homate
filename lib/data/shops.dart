import 'package:homate/data/comments.dart';
import 'package:homate/data/cooks.dart';
import 'package:homate/data/products.dart';
import 'package:homate/models/shop_model.dart';

List<Shop> shops = [
  Shop(
    0,
    "Hafize'nin yeri",
    'Ev Yemekleri ve daha fazlası...',
    cooks,
    products,
    comments,
  ),
  Shop(
    1,
    'Çiğköfteci Ali Usta',
    'En iyi çiğköftenin adresi Ali Usta',
    cooks,
    products,
    comments,
  ),
  Shop(
    2,
    'Baruthane Pilavcısı',
    'Sallamasyon bir açıklama girdisi',
    cooks,
    products,
    comments,
  ),
  Shop(
    3,
    'Saimoğlu Pastanesi',
    'Pasta, Poğaça, Açma ve geri kalan hamurişlerinin tümünde en iyi ürünleri çıkaran o efsanevi yer',
    cooks,
    products,
    comments,
  )
];
