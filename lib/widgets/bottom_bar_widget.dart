import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:homate/pages/pages_list.dart';

class BottomBarWidget extends StatelessWidget {
  final int currentIndex;

  BottomBarWidget({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Container(
        color: const Color(0xff060c12),
        child: SalomonBottomBar(
          itemPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          duration: const Duration(seconds: 1),
          selectedColorOpacity: 0.1,
          selectedItemColor: HomateColorHelper.homateOrange,
          unselectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (i) {
            if (i != currentIndex) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[i],
                ),
              );
            }
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.account_balance_wallet),
              title: const Text("Wallet"),
            ),
          ],
        ),
      ),
    );
  }
}
