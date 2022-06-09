import 'package:flutter/material.dart';

Widget buildImageOnBoarding(BuildContext context) {
  const String path = 'assets/bg.png';
  return Image.asset(
    path,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,
  );
}
