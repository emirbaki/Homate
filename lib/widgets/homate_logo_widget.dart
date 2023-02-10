import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      child: Image.asset(
        'assets/homatelogo.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
