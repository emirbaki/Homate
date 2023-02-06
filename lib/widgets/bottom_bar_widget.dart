import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';
import 'package:homate/widgets/homate_bottom_navbar.dart';

import 'package:homate/pages/pages_list.dart';

class BottomBarWidget extends StatelessWidget {
  final int currentIndex;

  const BottomBarWidget({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Container(
        color: Color.fromARGB(255, 196, 196, 196),
        child: HomateBottomNavBar(
          itemPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          duration: const Duration(milliseconds: 600),
          selectedColorOpacity: 0.1,
          selectedItemColor: HomateColorHelper.homateOrange,
          unselectedItemColor: Colors.black,
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
            HomateBottomNavBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            HomateBottomNavBarItem(
              icon: const Icon(Icons.account_balance_wallet),
              title: const Text("Wallet"),
            ),
            //Bos olan navbar item
            HomateBottomNavBarItem(
              icon: const Icon(Icons.account_balance_wallet),
              title: const Text("Wallet"),
            ),
            //Bos olan navbar item
            HomateBottomNavBarItem(
              icon: const Icon(Icons.star),
              title: const Text("Favorite"),
            ),
            HomateBottomNavBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
            ),
          ],
          context: context,
        ),
      ),
    );
  }
}
