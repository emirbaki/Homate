import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';

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
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: HomateColorHelper.homateOrange),
        tabBarTheme: const TabBarTheme(
            indicator: UnderlineTabIndicator(
                insets: EdgeInsets.symmetric(horizontal: 50),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: Colors.white, style: BorderStyle.solid, width: 2)),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white),
      ),
      initialRoute: '/',
      routes: {'/': (context) => pages[0], '/wallet': (context) => pages[1]},
      // home: const WalletPage(),
    );
  }
}
