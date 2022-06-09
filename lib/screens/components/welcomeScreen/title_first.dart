import 'package:flutter/material.dart';
import 'package:translate_it/themes/constant.dart';
import 'package:translate_it/themes/light_theme.dart';

Widget buildLetsBeginAppTitle() {
  return Text(
    Constant().kWelcomeTitle1,
    textAlign: TextAlign.start,
    style: LightTheme().theme.textTheme.headline1,
  );
}
