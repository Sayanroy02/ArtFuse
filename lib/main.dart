
import 'package:artfuse/pages/onboarding/onboarding.dart';
import 'package:artfuse/theme/theme_of_chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ArtfuseTheme.lightTheme,
      darkTheme: ArtfuseTheme.darkTheme,
      home: const Onboarding(),
    );
  }
}
