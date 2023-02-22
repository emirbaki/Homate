import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_utilities.dart';

class HomateThemeHelper {
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      background: const Color.fromARGB(255, 46, 46, 46),
      primary: HomateColorHelper.homateOrange,
    ),
    primaryColor: HomateColorHelper.homateOrange,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: HomateThemeHelper.darkTextTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: HomateColorHelper.homateOrange),
    tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
            insets: const EdgeInsets.symmetric(horizontal: 50),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
                color: HomateColorHelper.homateOrange,
                style: BorderStyle.solid,
                width: 2)),
        labelColor: HomateColorHelper.homateOrange.shade900,
        unselectedLabelColor: Colors.white,
        indicatorColor: HomateColorHelper.homateOrange.shade900),
    iconTheme: const IconThemeData(color: Colors.white),
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      background: const Color.fromARGB(255, 239, 239, 239),
      primary: HomateColorHelper.homateOrange,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: HomateThemeHelper.lightTextTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: HomateColorHelper.homateOrange,
        foregroundColor: Colors.white),
    tabBarTheme: const TabBarTheme(
        indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: 50),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2)),
        labelColor: Colors.white,
        unselectedLabelColor: Color.fromARGB(255, 46, 46, 46),
        indicatorColor: Colors.white),
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 46, 46, 46)),
  );

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
        fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    displayMedium: GoogleFonts.roboto(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    displaySmall: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    headlineMedium: GoogleFonts.roboto(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headlineSmall:
        GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
    titleLarge: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    titleMedium: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    titleSmall: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyMedium: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    bodySmall: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    labelSmall: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
        fontSize: 97,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.black),
    displayMedium: GoogleFonts.roboto(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.black),
    displaySmall: GoogleFonts.roboto(
        fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
    headlineMedium: GoogleFonts.roboto(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    headlineSmall: GoogleFonts.roboto(
        fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
    titleLarge: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.black),
    titleMedium: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: Colors.black),
    titleSmall: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: Colors.black),
    bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: Colors.black),
    bodyMedium: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    labelLarge: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.black),
    bodySmall: GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: Colors.black),
    labelSmall: GoogleFonts.roboto(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: Colors.black),
  );
}
