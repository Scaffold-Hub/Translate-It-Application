import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:translate_it/themes/light_theme.dart';
import 'package:translate_it/utils/components/image_path.dart';

PageViewModel buildFirstPageViewScreen({
  required BuildContext context,
  required String title,
}) {
  return PageViewModel(
    title: title,
    decoration: PageDecoration(
      titlePadding: const EdgeInsets.only(top: 300),
      titleTextStyle: TextStyle(
        color: LightTheme().theme.primaryColor,
        fontSize: 32.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    body: '',
  );
}

PageViewModel buildPageViewModel({
  required BuildContext context,
  required String title,
  required String body,
  required String path,
}) {
  return PageViewModel(
    title: title,
    body: body,
    decoration: PageDecoration(
      titleTextStyle: LightTheme().theme.textTheme.headline1!,
      bodyTextStyle: LightTheme().theme.textTheme.bodyText1!,
    ),
    image: buildImageAsset(context, path),
  );
}
