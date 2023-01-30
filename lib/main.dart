import 'package:flutter/material.dart';
import 'package:homate/pages/homate_wallet_page.dart';
import 'package:homate/utilities/color_utilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homate',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: HomateColorHelper.homateOrange,
      ),
      // home: const HomateLoginPage(title: 'Homate'),
      home: const WalletPage(),
    );
  }
}
