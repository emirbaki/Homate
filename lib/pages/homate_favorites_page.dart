import 'package:flutter/material.dart';
import 'package:homate/core/general_controller_app.dart';
import 'package:homate/data/favorites.dart';
import 'package:homate/models/product_model.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';
import 'package:homate/widgets/food_card.dart';
import 'package:homate/widgets/homate_drawer.dart';

import '../widgets/general_appbar.dart';
import '../widgets/homate_shop_fabutton.dart';

class HomateFavoritesPage extends StatefulWidget {
  const HomateFavoritesPage({Key? key}) : super(key: key);

  @override
  State<HomateFavoritesPage> createState() => _HomateFavoritesPageState();
}

class _HomateFavoritesPageState extends State<HomateFavoritesPage> {
  final favoriteListInstance = getIt<FavoritesHandler>();
  var listLength = 0;
  int currentIndex = 3;

  int defineLength() {
    setState(() {
      listLength = favoriteListInstance.favorites.length;
    });
    return listLength;
  }

  @override
  void initState() {
    super.initState();
    defineLength();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomateDrawer(),
      appBar: const GeneralAppBar(
        title: 'Favorites',
      ),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
      floatingActionButton: const HomateShopFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: defineLength(),
        itemBuilder: (context, index) {
          for (Product food in favoriteListInstance.favorites) {
            return FoodCard(
              food: favoriteListInstance.favorites[index],
              index: index,
              isFavorite: true,
              press: () => print("hello"),
            );
          }
          return null;
        },
      ),
    );
  }
}
