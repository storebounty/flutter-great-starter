import 'package:customer_app_demo/screens/themes/Themesscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:storebounty_auth/storebounty_auth_v1.dart';

class AuthScreen extends StatefulWidget {
  static const pageId = "auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return StorebountyAuthPage(
      onLoginSuccess: (){
        print("dadsadasds success");
        // Navigator.pop(context);
        Navigator.pushNamedAndRemoveUntil(context, ThemesScreen.pageId, (route) => false);
      },
      onLoginFailed: (){

      },
    );
  }
}