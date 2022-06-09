import 'package:flutter/material.dart';
import 'package:translate_it/screens/components/onBoardingScreen/on_board_image_path.dart';
import 'package:translate_it/screens/components/welcomeScreen/title_first.dart';
import 'package:translate_it/screens/components/welcomeScreen/title_second.dart';
import 'package:translate_it/screens/home_screen.dart';
import 'package:translate_it/themes/constant.dart';
import 'package:translate_it/themes/light_theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController userInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme().theme.primaryColorDark,
      body: Stack(
        children: [
          buildImageOnBoarding(context),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  buildLetsBeginAppTitle(),
                  buildEnterYourInfoTitle(),
                  const Spacer(),
                  buildTextFieldOn(),
                  const Spacer(flex: 2),
                  buildMainButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMainButton(BuildContext context) {
    return InkWell(
      onTap: () {
        var route = MaterialPageRoute(
          builder: (BuildContext context) =>
              HomeScreen(inputData: userInput.text),
        );
        Navigator.of(context).push(route);
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(Constant().kDefaultPadding * 0.75), // 15
        decoration: BoxDecoration(
          gradient: Constant().kPrimaryGradient,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Text(
          "Start",
          style:
              Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  TextField buildTextFieldOn() {
    return TextField(
      controller: userInput,
      onChanged: (value) {
        setState(() {
          value = userInput.text;
        });
      },
      decoration: const InputDecoration(
        filled: true,
        hintText: "Full Name",
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
