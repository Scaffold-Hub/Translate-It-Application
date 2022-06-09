import 'package:flutter/material.dart';
import 'package:translate_it/screens/welcome_screen.dart';

import 'special_continer.dart';

class SecondMainRow extends StatelessWidget {
  const SecondMainRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainSpecialCard(
          state: const WelcomeScreen(),
          kColor: Colors.white,
          icons: Icons.handshake_outlined,
          inputData: 'Write',
        ),
        MainSpecialCard(
          state: const WelcomeScreen(),
          kColor: Colors.white,
          icons: Icons.auto_fix_normal,
          inputData: 'Import',
        ),
        MainSpecialCard(
          state: const WelcomeScreen(),
          kColor: Colors.white,
          icons: Icons.add_circle_outline_rounded,
          inputData: 'Adabt',
        ),
      ],
    );
  }
}
