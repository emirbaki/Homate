import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homate/core/general_controller_app.dart';
import 'package:homate/data/favorites.dart';
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
  int listLengthNotifier = 0;
  var favoriteListInstance = getIt<FavoritesHandler>();
  int currentIndex = 3;

  @override
  void initState() {
    listLengthNotifier = favoriteListInstance.favorites.length;
    super.initState();
  }

  void updateListLength() {
    setState(() {
      listLengthNotifier = favoriteListInstance.favorites.length;
    });
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
        itemCount: listLengthNotifier,
        itemBuilder: (context, index) {
          for (var i = 0; i < favoriteListInstance.favorites.length;) {
            return FoodCard(
              food: favoriteListInstance.favorites[index],
              index: index,
              pageRefreshOnFavorites: () => updateListLength(),
              press: () => log(listLengthNotifier.toString()),
            );
          }
          return null;
        },
      ),
    );
  }
}
