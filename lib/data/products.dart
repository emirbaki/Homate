import 'package:flutter/material.dart';
import 'package:homate/models/product_model.dart';

List<Product> products = [
  Product(
    0,
    'Çiğköfte',
    25,
    100,
    FoodType.evyemegi,
    [
      Image.network(
          'https://cdn.yemek.com/mnresize/940/940/uploads/2019/03/etsiz-cig-kofte-yeni.jpg',
          fit: BoxFit.fitWidth),
      Image.network(
          'https://www.ziyafetcigkofte.com/wp-content/uploads/2021/03/durum-genel-foto.jpg',
          fit: BoxFit.fitWidth)
    ],
    'Adıyaman usülü çiğköfte dürüm',
  ),
  Product(
    1,
    'Ezogelin',
    25,
    100,
    FoodType.evyemegi,
    [
      Image.network(
          'https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/ezogelin-corbasi-yemekcom.jpg',
          fit: BoxFit.fitWidth),
      Image.network(
          'https://i4.hurimg.com/i/hurriyet/75/1200x675/624c3c074e3fe02f0c51bbcb.jpg',
          fit: BoxFit.fitWidth),
    ],
    'Dehşet bir Ezogelin Çorbası',
  ),
  Product(
    2,
    'İzmir Köfte',
    45,
    150,
    FoodType.evyemegi,
    [
      Image.network(
          'https://cdn.yemek.com/mnresize/1250/833/uploads/2021/09/lokanta-usulu-firinda-izmir-kofte-2-tarifi.jpg',
          fit: BoxFit.fitWidth),
      Image.network(
          'https://www.degisiktarifler.com/wp-content/uploads/2021/07/izmir-kofte-tarifi.jpeg',
          fit: BoxFit.fitWidth)
    ],
    'Enfes izmir köfte',
  ),
  Product(
    3,
    'Ayran',
    10,
    200,
    FoodType.icecek,
    [
      Image.network(
          'https://www.nazar.com.tr/wp-content/uploads/2020/12/ayran.jpg',
          fit: BoxFit.fitWidth),
      Image.network(
          'https://www.nazar.com.tr/wp-content/uploads/2020/12/ayran.jpg',
          fit: BoxFit.fitWidth)
    ],
    'Dümdüz Ayran',
  ),
  Product(
    4,
    'Pişi',
    35,
    200,
    FoodType.hamurisi,
    [
      Image.network(
          'https://cdn.ye-mek.net/App_UI/Img/out/650/2020/01/pisi-resimli-yemek-tarifi(11).jpg',
          fit: BoxFit.fitWidth),
      Image.network(
          'https://cdn.yemek.com/mnresize/1250/833/uploads/2019/05/pisi-asama-18.jpg',
          fit: BoxFit.fitWidth)
    ],
    'Anne eli değmiş gibi bir pişi tabağı',
  ),
];
