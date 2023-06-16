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
        Navigator.pop(context);
      },
      onLoginFailed: (){

      },
    );
  }
}