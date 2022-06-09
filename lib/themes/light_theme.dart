import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightTheme {
  final ThemeData theme = ThemeData(
    colorScheme: const ColorScheme.light(),
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    primaryColorDark: Colors.transparent,
    secondaryHeaderColor: Colors.white,
    textTheme: TextTheme(
      headline1: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal),
      headline2: TextStyle(
          color: Get.isDarkMode ? Colors.white : Colors.black,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      headline3: TextStyle(
          color: Get.isDarkMode ? Colors.black : Colors.white,
          fontSize: 29.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal),
      headline4: TextStyle(
          color: Get.isDarkMode ? Colors.black : Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      bodyText1: const TextStyle(
          color: Colors.white70,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal),
    ),
  );
}
