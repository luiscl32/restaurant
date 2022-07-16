import 'package:flutter/material.dart';

class AppTheme {
  //cplprs
  static Color primary = Colors.green;
  static Color secondary = Colors.red;
  static Color error = Colors.redAccent.shade700;

  //text
  static TextStyle title = TextStyle(
    fontSize: 18.0,
    color: primary,
    fontWeight: FontWeight.bold,
  );

  static ThemeData light = ThemeData.light().copyWith(
    primaryColor: primary,

    //appbar
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
    ),

    //text button
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: secondary),
    ),

    //elevatedbutton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      ),
    ),

    // inputs
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: Colors.black),
      iconColor: primary,
      //bordes
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: error),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
