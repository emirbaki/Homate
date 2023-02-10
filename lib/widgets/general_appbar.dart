import 'package:flutter/material.dart';

class GeneralAppBar extends StatelessWidget with PreferredSizeWidget {
  const GeneralAppBar({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false, title: Center(child: Text(title)));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
