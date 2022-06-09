import 'package:flutter/material.dart';
import 'package:translate_it/screens/text_translate_screen.dart';

import '../../welcome_screen.dart';
import 'special_continer.dart';

class FirstRowMain extends StatelessWidget {
  const FirstRowMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainSpecialCard(
          state: const TextTranslateScreen(),
          kColor: Colors.white,
          icons: Icons.text_format_rounded,
          inputData: 'Text',
        ),
        MainSpecialCard(
          state: WelcomeScreen(),
          kColor: Colors.white,
          icons: Icons.camera_alt,
          inputData: 'Camera',
        ),
        MainSpecialCard(
          state: WelcomeScreen(),
          kColor: Colors.white,
          icons: Icons.message,
          inputData: 'Talking',
        ),
      ],
    );
  }
}
