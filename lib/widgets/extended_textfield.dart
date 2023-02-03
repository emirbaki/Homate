import 'package:flutter/material.dart';

class ExtendedTextField extends StatelessWidget {
  const ExtendedTextField({
    super.key,
    required this.hintText,
    required this.iconData,
  });

  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(iconData),
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
