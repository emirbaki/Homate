import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';
import 'package:homate/widgets/homate_drawer.dart';

import '../widgets/general_appbar.dart';
import '../widgets/homate_shop_fabutton.dart';

class HomateFavoritesPage extends StatefulWidget {
  const HomateFavoritesPage({Key? key}) : super(key: key);

  @override
  State<HomateFavoritesPage> createState() => _HomateFavoritesPageState();
}

class _HomateFavoritesPageState extends State<HomateFavoritesPage> {
  int currentIndex = 3;
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
    );
  }
}
