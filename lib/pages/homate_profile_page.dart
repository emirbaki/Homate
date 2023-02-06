import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

import '../widgets/homate_shop_fabutton.dart';

class HomateProfilePage extends StatefulWidget {
  const HomateProfilePage({Key? key}) : super(key: key);

  @override
  _HomateProfilePageState createState() => _HomateProfilePageState();
}

class _HomateProfilePageState extends State<HomateProfilePage> {
  int currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Profile'))),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
      floatingActionButton: const HomateShopFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
