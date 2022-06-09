import 'package:flutter/material.dart';
import 'package:translate_it/themes/light_theme.dart';

Text buildIntroText(BuildContext context) {
  return Text(
    'Read',
    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w600, color: LightTheme().theme.primaryColor),
  );
}
