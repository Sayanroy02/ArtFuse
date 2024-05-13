
import 'package:artfuse/theme/constants/custom_text_theme.dart';
import 'package:artfuse/theme/constants/icon_theme.dart';
import 'package:artfuse/theme/constants/tabbatTheme.dart';
import 'package:artfuse/theme/constants/vicharr_color.dart';
import 'package:flutter/material.dart';


class ArtfuseTheme{
  ArtfuseTheme._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'NotoSansJP',
    brightness: Brightness.light,
    primaryColor: ArtfuselightBgColor,
    indicatorColor:const  Color(0xff333333),
    iconTheme: ArtfuseiconTheme.lightmodeIconTheme,
    primaryTextTheme: ArtfusetextTheme.lighttextTheme,
    scaffoldBackgroundColor:ArtfuselightBgColor,
    textTheme: ArtfusetextTheme.lighttextTheme,
    tabBarTheme: ArtfusetabbarTheme.lightmodeTabbar,
    focusColor:const  Color(0xff125488),
    shadowColor: Colors.grey.shade400,
    cardColor: ArtfusecardColorLightMode
  );
  static ThemeData darkTheme = ThemeData(
        useMaterial3: true,
    fontFamily: 'NotoSansJP',
    brightness: Brightness.dark,
    primaryColor: ArtfusedarkBgColor,
    iconTheme: ArtfuseiconTheme.darkmodeIconTheme,
    primaryTextTheme: ArtfusetextTheme.darktextTheme,
    scaffoldBackgroundColor: ArtfusedarkBgColor,
    indicatorColor: const Color(0xfffdfcfa),
    textTheme: ArtfusetextTheme.darktextTheme,
    tabBarTheme: ArtfusetabbarTheme.darkmodeTabbar,
    focusColor: const Color(0xff0080ff),
    shadowColor: Colors.grey.shade700,
    cardColor: ArtfusecardColorDarkMode
  );

}