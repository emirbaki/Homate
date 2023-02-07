import 'package:flutter/material.dart';

import '../utilities/color_utilities.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    this.onChanged,
  });
  final ValueChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: HomateColorHelper.homateOrange.withOpacity(0.4)),
        child: TextField(
          onChanged: onChanged,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(
                color: HomateColorHelper.homateOrange.withOpacity(0.8),
              ),
              iconColor: HomateColorHelper.homateOrange.withOpacity(0.8),
              icon: const Icon(Icons.search)),
        ));
  }
}
