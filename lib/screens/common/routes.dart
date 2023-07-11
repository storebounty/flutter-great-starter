import 'package:customer_app_demo/screens/auth/authscreen.dart';
import 'package:customer_app_demo/screens/checkout/checkoutscreen.dart';
import 'package:customer_app_demo/screens/onboarding/onboardingscreen.dart';
import 'package:customer_app_demo/screens/themes/Themesscreen.dart';
import 'package:customer_app_demo/screens/user/userprofile.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes() {
  return {
    ThemesScreen.pageId: (context) => const ThemesScreen(),
    AuthScreen.pageId: (context) => const AuthScreen(),
    OnBoardingScreen.pageId: (context) => const OnBoardingScreen(),
    CheckoutScreen.pageId: (context) => const CheckoutScreen(),
    UserProfile.pageId: (context) => const UserProfile()
  };
}