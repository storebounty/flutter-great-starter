import 'package:customer_app_demo/screens/auth/authscreen.dart';
import 'package:customer_app_demo/screens/checkout/checkoutscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:storebounty_auth/storebounty_auth_v1.dart';
import 'package:storebounty_themes/entry/entrypoint.dart';

class ThemesScreen extends StatefulWidget {
  static const pageId = "theme_screen";
  const ThemesScreen({super.key});

  @override
  State<ThemesScreen> createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  @override
  Widget build(BuildContext context) {
    return StorebountyTheme(
      goToCheckout: () async {
          //check if the user is logged use Storebounty_auth
          var check = await StorebountyAuth.checkIfUserIsLoggedIn();

          if(check == null){
            Navigator.pushNamed(context, AuthScreen.pageId);
            return;
          }
          Navigator.pushNamed(context, CheckoutScreen.pageId);

      },
    );
  }
}