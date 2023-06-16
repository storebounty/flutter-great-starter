import 'package:customer_app_demo/screens/themes/Themesscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:storebounty_auth/storebounty_auth_v1.dart';
import 'package:storebounty_checkout/model/customermodel.dart';
import 'package:storebounty_checkout/storebounty_checkout_v1.dart';

class CheckoutScreen extends StatefulWidget {
  static const pageId = "checkout-page";
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  

  @override
  Widget build(BuildContext context) {
    return StoreBountyCheckout(
      onCompleted: (){
        Navigator.pushNamedAndRemoveUntil(context, ThemesScreen.pageId, (route) => false);
      },
    );
  }
}