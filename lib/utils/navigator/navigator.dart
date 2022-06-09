import 'package:flutter/material.dart';
import 'package:translate_it/screens/welcome_screen.dart';

class INavigator {
  void goToWelcome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Text('')),
      );
}
