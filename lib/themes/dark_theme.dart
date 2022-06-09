import 'package:flutter/material.dart';

class DarkTheme {
  final ThemeData theme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    primarySwatch: Colors.purple,
    primaryColor: Colors.black87,
    primaryColorDark: Colors.transparent,
    secondaryHeaderColor: Colors.white,
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal),
      headline2: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
      headline3: TextStyle(
          color: Colors.white,
          fontSize: 29.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal),
      bodyText1: TextStyle(
          color: Colors.white70,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal),
    ),
  );
}
