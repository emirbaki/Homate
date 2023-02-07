import 'package:flutter/material.dart';

import '../pages/pages_list.dart';

class HomateShopFloatingActionButton extends StatelessWidget {
  const HomateShopFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => pages[5],
          ),
        );
      },
      child: const Icon(Icons.shopping_cart_sharp),
    );
  }
}
