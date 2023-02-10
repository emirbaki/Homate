import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';
import 'package:homate/widgets/general_appbar.dart';
import 'package:homate/widgets/homate_drawer.dart';

import '../widgets/homate_shop_fabutton.dart';

class HomateProfilePage extends StatefulWidget {
  const HomateProfilePage({Key? key}) : super(key: key);

  @override
  State<HomateProfilePage> createState() => _HomateProfilePageState();
}

class _HomateProfilePageState extends State<HomateProfilePage> {
  int currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomateDrawer(),
      appBar: const GeneralAppBar(
        title: 'Profile',
      ),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
      floatingActionButton: const HomateShopFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
