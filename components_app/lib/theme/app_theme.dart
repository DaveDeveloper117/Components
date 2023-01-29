import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = (Color(0xFFB5838D));
  static const Color primaryLight = (Color(0xFFc298a0));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //set primaryColor
    primaryColor: primary,
    primaryColorLight: primaryLight,
    //app bar theme
    appBarTheme:
        const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 0)),
    //Fab theme
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),
    //TextButton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8), topRight: Radius.circular(8)))),
  );
}
