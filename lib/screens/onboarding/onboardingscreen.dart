import 'package:customer_app_demo/screens/themes/Themesscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:storebounty_onboarding/entry/entrypoint.dart';

class OnBoardingScreen extends StatefulWidget {
  static const pageId = "onboading";
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return StorebountyOnboarding(
      onGetStarted: () {
        Navigator.pushNamed(context, ThemesScreen.pageId);
      },
    );
  }
}
