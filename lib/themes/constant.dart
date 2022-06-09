import 'package:flutter/material.dart';

class Constant {
  EdgeInsets kdefaultPadding = const EdgeInsets.only(left: 20.0, right: 20.0);
  final double kDefaultPadding = 20.0;

  final String kWelcomeTitle1 = 'Let\'s begin app';
  final String kTitle = 'WELCOME';
  final String kOnBoardTitle = 'Skip';
  final String kPageViewModelTitle1 = 'Easy to Learn';
  final String kPageViewModelTitle2 = 'Which language would you like to learn?';
  final String kPageViewModelTitle3 = 'About Us and Developers';
  final String kPageViewModelBodyTitle1 =
      'Wherever you are, open it and look up the word you don\'t know.';
  final String kPageViewModelBodyTitle2 =
      'Learning English, Turkish, German, Spanish and many more languages ​​is possible by using our application.';
  final String kPageViewModelBodyTitle3 =
      'Our application is written and developed by  Burak Taş, who writes code as a hobby.';

  final kPrimaryGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 79, 182, 242),
      Color.fromARGB(255, 166, 181, 212)
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  final BoxDecoration kHomeScreenDecorationBox = const BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(32.0),
      bottomRight: Radius.circular(32.0),
    ),
  );
}
