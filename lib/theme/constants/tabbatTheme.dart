import 'package:flutter/material.dart';

class ArtfusetabbarTheme {
  ArtfusetabbarTheme._();

  static TabBarTheme lightmodeTabbar = TabBarTheme(
    labelColor: const Color(0xff50abe7),
    //  unselectedLabelColor: Colors.grey.shade600,
    unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
        fontFamily: 'Noto Sans Japanese'),
    indicatorColor: Colors.grey.shade900,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: const UnderlineTabIndicator(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 4.0, color: Color(0xff50abe7)),
      insets: EdgeInsets.symmetric(horizontal: 100.0),
    ),
    labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'Noto Sans Japanese'),
    dividerColor: const Color(0xfff6f6f6),
  );

  static TabBarTheme darkmodeTabbar = TabBarTheme(
    labelColor: const Color(0xff50abe7),
    //  unselectedLabelColor: Colors.grey.shade600,
    indicatorColor: Colors.grey.shade500,
      indicatorSize: TabBarIndicatorSize.tab,
     indicator: const UnderlineTabIndicator(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 4.0, color: Color(0xff50abe7)),
      insets: EdgeInsets.symmetric(horizontal: 100.0),
    ),
    dividerColor: const Color(0xff333333),
    labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'Noto Sans Japanese'),
    unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
        fontFamily: 'Noto Sans Japanese'),
  );
}
