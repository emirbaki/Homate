import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

import '../widgets/homate_shop_fabutton.dart';

class HomateFavoritesPage extends StatefulWidget {
  const HomateFavoritesPage({Key? key}) : super(key: key);

  @override
  _HomateFavoritesPageState createState() => _HomateFavoritesPageState();
}

class _HomateFavoritesPageState extends State<HomateFavoritesPage> {
  int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Favorites'))),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
      floatingActionButton: const HomateShopFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
