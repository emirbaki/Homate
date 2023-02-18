import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';

class PageviewIndicator extends StatelessWidget {
  final bool isActive;
  const PageviewIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: isActive ? HomateColorHelper.homateOrange : Colors.grey.shade600,
      ),
    );
  }
}
