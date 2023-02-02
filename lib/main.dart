import 'package:flutter/material.dart';
import 'package:homate/pages/homate_wallet_page.dart';
import 'package:homate/utilities/color_utilities.dart';

import 'pages/homate_login_page.dart';
import 'package:homate/pages/pages_list.dart';

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
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {'/': (context) => pages[0], '/wallet': (context) => pages[1]},
      // home: const WalletPage(),
    );
  }
}
