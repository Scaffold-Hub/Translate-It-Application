import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../themes/light_theme.dart';

Widget buildTextInAppBar() {
  return Text(
    'Translate It',
    style: LightTheme().theme.textTheme.headline2!.copyWith(
        fontSize: 22.0,
        fontWeight: FontWeight.w400,
        color: Get.isDarkMode ? Colors.white : Colors.black87),
  );
}
