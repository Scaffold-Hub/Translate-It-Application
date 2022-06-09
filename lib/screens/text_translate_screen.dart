import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_it/screens/components/textTranslateScreen/app_bar_text.dart';
import 'package:translate_it/themes/constant.dart';
import 'package:translate_it/themes/dark_theme.dart';
import 'package:translate_it/themes/light_theme.dart';
import 'package:translator/translator.dart';

class TextTranslateScreen extends StatefulWidget {
  const TextTranslateScreen({Key? key}) : super(key: key);

  @override
  State<TextTranslateScreen> createState() => _TextTranslateScreenState();
}

class _TextTranslateScreenState extends State<TextTranslateScreen> {
  TextEditingController translateInput = TextEditingController();
  GoogleTranslator translator = GoogleTranslator();
  String textPhrase = '';
  List<String> from = [
    'tr',
    'en',
    'de',
  ];

  List<String> fromTitle = ['Turkish', 'English', 'Deutschland'];

  void translate() {
    translator
        .translate(translateInput.text, from: from[takeIndex], to: 'en')
        .then(
      (output) {
        setState(() {
          textPhrase = output.toString();
        });
      },
    );
  }

  int valueIndex = 0;

  int get takeIndex => getIndex(valueIndex);

  int getIndex(int value) {
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: buildTextInAppBar(),
      ),
      body: Padding(
        padding: Constant().kdefaultPadding,
        child: Column(
          children: [
            const Spacer(flex: 1),
            Container(
              height: 250.0,
              width: 325.0,
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Colors.black38 : Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 12,
                    offset: const Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            //Todo: ALERT DİALOG İLE SEÇİM YAPTIRDIM.
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Choose Language'),
                                  content: setupAlertDialoadContainer(),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 215,
                            height: 35,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 12,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                              color: Get.isDarkMode
                                  ? Colors.black26
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Language : ',
                                    style: TextStyle(
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black87,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Text(
                                    fromTitle[takeIndex],
                                    style: TextStyle(
                                      color: Get.isDarkMode
                                          ? Colors.white
                                          : Colors.black87,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      controller: translateInput,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write there',
                        hintStyle: Get.isDarkMode
                            ? DarkTheme().theme.textTheme.headline2
                            : LightTheme().theme.textTheme.headline2,
                      ),
                      onChanged: (value) {
                        setState(() {
                          translate();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 250.0,
              width: 325.0,
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Colors.black38 : Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 12,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textPhrase,
                      style: Get.isDarkMode
                          ? DarkTheme().theme.textTheme.headline2
                          : LightTheme().theme.textTheme.headline2,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget setupAlertDialoadContainer() {
    return SizedBox(
      height: 300.0,
      width: 300.0,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: from.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(fromTitle[index]),
            onTap: () {
              valueIndex = index;
            },
          );
        },
      ),
    );
  }
}
