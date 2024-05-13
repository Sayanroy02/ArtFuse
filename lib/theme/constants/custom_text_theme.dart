import 'package:flutter/material.dart';

class ArtfusetextTheme{
  ArtfusetextTheme._();



  static TextTheme lighttextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize:30,fontWeight: FontWeight.bold, color: const Color(0xff125488),),
    headlineMedium: const TextStyle().copyWith(fontSize:25,fontWeight: FontWeight.bold, color: Color(0xffffffff) ),
    headlineSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),


    titleLarge:  const TextStyle().copyWith(fontSize:30,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d) ),
    titleMedium: const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.normal, color: Colors.grey.shade100 ),
    titleSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.normal, color: const Color(0xff0d0d0d) ),


    bodyLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: Color(0xff0d0d0d) ),
    bodyMedium:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xff0d0d0d) ),
    bodySmall:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.w400, color: const Color(0xff0d0d0d) ),

 
   
    labelLarge:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.normal, color: const Color(0xffcccccc) ),
    labelMedium:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.w400, color: const Color(0xffcccccc) ),
    labelSmall:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w300, color: const Color(0xffcccccc) ),

    displaySmall: const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.normal, color: const Color(0xff272727)),
    displayMedium: const TextStyle().copyWith(fontSize:25,fontWeight: FontWeight.bold, color: const Color(0xff0d0d0d)),


  );



  static TextTheme darktextTheme = TextTheme(
     headlineLarge:  const TextStyle().copyWith(fontSize:30,fontWeight: FontWeight.bold, color: const Color(0xff125488) ),
    headlineMedium: const TextStyle().copyWith(fontSize:25,fontWeight: FontWeight.bold, color:Color(0xfff7f6f1) ),
    headlineSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),


    titleLarge:  const TextStyle().copyWith(fontSize:30,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa) ),
    titleMedium: const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.normal, color: Colors.grey.shade800 ),
    titleSmall:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.normal, color: const Color(0xff272727) ),


    bodyLarge:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xfffdfcfa) ),
    bodyMedium:  const TextStyle().copyWith(fontSize:18,fontWeight: FontWeight.w400, color: const Color(0xfffdfcfa) ),
    bodySmall:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.w400, color: const Color(0xfffdfcfa) ),

 
   
    labelLarge:  const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.normal, color: const Color(0xff333333) ),
    labelMedium:  const TextStyle().copyWith(fontSize:14,fontWeight: FontWeight.w400, color: const Color(0xff333333) ),
    labelSmall:  const TextStyle().copyWith(fontSize:12,fontWeight: FontWeight.w300, color: const Color(0xff333333) ),

      displaySmall: const TextStyle().copyWith(fontSize:16,fontWeight: FontWeight.normal, color: const Color(0xfff7f6f1)),
      displayMedium: const TextStyle().copyWith(fontSize:20,fontWeight: FontWeight.bold, color: const Color(0xfffdfcfa)),
  );
}