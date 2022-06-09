import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_it/screens/on_boarding_screen.dart';
import 'package:translate_it/themes/dark_theme.dart';
import 'package:translate_it/themes/light_theme.dart';

void main() {
  runApp(const TranslateIt());
}

class TranslateIt extends StatelessWidget {
  const TranslateIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Translate It',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,
      themeMode: ThemeMode.system,
      home: const OnBoardingScreen(),
    );
  }
}
