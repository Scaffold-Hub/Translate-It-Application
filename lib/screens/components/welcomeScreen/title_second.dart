import 'package:flutter/material.dart';
import 'package:translate_it/themes/light_theme.dart';

Widget buildEnterYourInfoTitle() {
  return Text(
    "Enter your informations below",
    style: LightTheme().theme.textTheme.bodyText1!.copyWith(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
  );
}
