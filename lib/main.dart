import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homate/core/general_controller_app.dart';
import 'package:homate/utilities/color_utilities.dart';

import 'package:homate/pages/pages_list.dart';
import 'package:homate/utilities/theme_utilities.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void changeTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  ThemeMode getTheme() {
    return _themeMode;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homate',
      debugShowCheckedModeBanner: false,

      theme: HomateThemeHelper.lightTheme,
      darkTheme: HomateThemeHelper.darkTheme,
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => pages[0],
        '/wallet': (context) => pages[1],
        //page[2]yi bottom appbardaki görünmez buton için null bıraktım
        '/favorites': (context) => pages[3],
        '/profile': (context) => pages[4],
        '/shops': (context) => pages[5]
      },
      // home: const WalletPage(),
    );
  }
}
