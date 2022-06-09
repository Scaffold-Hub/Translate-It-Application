import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_it/themes/light_theme.dart';

// ignore: must_be_immutable
class MainSpecialCard extends StatelessWidget {
  Color kColor;
  IconData icons;
  String inputData;
  StatefulWidget state;

  MainSpecialCard(
      {Key? key,
      required this.kColor,
      required this.icons,
      required this.inputData,
      required this.state})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => state,
        ),
      ),
      child: Container(
        height: 135,
        width: 105,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 12,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: kColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 30.0, bottom: 30.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icons, size: 46, color: Colors.black87),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                inputData,
                style: LightTheme().theme.textTheme.bodyText1!.copyWith(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
