import 'package:flutter/material.dart';
import 'package:translate_it/utils/enum/enum.dart';

Widget buildImageAsset(BuildContext context, String path) {
  return Center(
    child: Image.asset(
      path,
    ),
  );
}

Widget buildImageNetwork(BuildContext context, String path) {
  return Center(
    child: Image.network(
      path,
      height: PageViewModelHeight.infinty.value(context),
      width: PageViewModelWidth.infinty.value(context),
      fit: BoxFit.fill,
    ),
  );
}
