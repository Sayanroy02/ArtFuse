import 'package:flutter/material.dart';

class ArtfuseappbarTheme {
  ArtfuseappbarTheme._();

  static AppBarTheme lightappBArTheme = const AppBarTheme(
      backgroundColor: Color(0xfff7f6f1),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xff0d0d0d),
      ),
      titleTextStyle: TextStyle(
          fontFamily: "Amita",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xff1f2024)));

  ///--dark mode
  static AppBarTheme darkappBArTheme = const AppBarTheme(
      backgroundColor: Color(0xff272727),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xfffdfcfa),
      ),
      titleTextStyle: TextStyle(
          fontFamily: "Amita",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xfffdfcfa)));
}
