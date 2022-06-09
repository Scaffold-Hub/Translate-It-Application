// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_it/screens/components/homeScreen/first_main_row.dart';
import 'package:translate_it/themes/light_theme.dart';
import 'components/homeScreen/second_main_row.dart';

class HomeScreen extends StatefulWidget {
  late String inputData;
  HomeScreen({Key? key, required this.inputData}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Colors.white : Colors.blue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(96.0, 36.0),
                  bottomRight: Radius.elliptical(96.0, 36.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 12,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO : PROFİLE GİRİŞ CİRCLE AVATAR İÇERİSİNDEN OLACAK. BURA DÜZENLENECEK.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatarProfile(),
                        IconButton(
                          onPressed: () {
                            Get.isDarkMode
                                ? Get.changeThemeMode(ThemeMode.light)
                                : Get.changeThemeMode(ThemeMode.dark);
                            //Get.snackbar('Notification', 'Theme has changed.');
                          },
                          icon: Icon(
                            Get.isDarkMode
                                ? Icons.mode_night
                                : Icons.mode_night_outlined,
                            size: 28.0,
                            color:
                                Get.isDarkMode ? Colors.black87 : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Text('Hello, ${widget.inputData}',
                        style: LightTheme().theme.textTheme.headline4),
                    const SizedBox(height: 10.0),
                    Text('What would you like to translate today ?',
                        style: LightTheme().theme.textTheme.headline3)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5 ~/ 2,
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                child: Column(
                  children: const [
                    Spacer(flex: 1),
                    FirstRowMain(),
                    Spacer(),
                    SecondMainRow(),
                    Spacer(flex: 6),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CircleAvatarProfile extends StatelessWidget {
  const CircleAvatarProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InkWell(
      child: CircleAvatar(
        radius: 27,
        backgroundImage: AssetImage('assets/bg.png'),
      ),
    );
  }
}
