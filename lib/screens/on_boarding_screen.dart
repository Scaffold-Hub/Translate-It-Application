import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:translate_it/screens/components/onBoardingScreen/on_board_image_path.dart';
import 'package:translate_it/screens/components/onBoardingScreen/on_board_text_comp.dart';
import 'package:translate_it/screens/components/onBoardingScreen/page_model_view.dart';
import 'package:translate_it/themes/constant.dart';
import 'package:translate_it/utils/navigator/navigator.dart';

import '../themes/light_theme.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final INavigator _navigator = INavigator();
  final Constant _constant = Constant();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildImageOnBoarding(context),
        SafeArea(
          child: IntroductionScreen(
            pages: [
              buildFirstPageViewScreen(
                context: context,
                title: _constant.kTitle,
              ),
              buildPageViewModel(
                context: context,
                title: _constant.kPageViewModelTitle1,
                body: _constant.kPageViewModelBodyTitle1,
                path: 'assets/airport.png',
              ),
              buildPageViewModel(
                context: context,
                title: _constant.kPageViewModelTitle2,
                body: _constant.kPageViewModelBodyTitle2,
                path: 'assets/english.png',
              ),
              buildPageViewModel(
                context: context,
                title: _constant.kPageViewModelTitle3,
                body: _constant.kPageViewModelBodyTitle3,
                path: 'assets/console.png',
              ),
            ],
            done: buildIntroText(context),
            onDone: () => _navigator.goToWelcome(context),
            onSkip: () => _navigator.goToWelcome(context),
            showSkipButton: true,
            next: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 21.0,
              color: LightTheme().theme.primaryColor,
            ),
            skip: Text(
              _constant.kOnBoardTitle,
              style: TextStyle(
                  color: LightTheme().theme.primaryColor, fontSize: 16.0),
            ),
            globalBackgroundColor: Colors.transparent,
            dotsDecorator: getDotDecoration(),
            nextFlex: 0,
            dotsFlex: 3,
          ),
        ),
      ],
    );
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color.fromARGB(255, 122, 121, 121),
        activeColor: const Color.fromARGB(255, 200, 191, 191),
        size: const Size(15, 10),
        activeSize: const Size(25, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      );
}
