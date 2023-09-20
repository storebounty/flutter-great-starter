import 'package:customer_app_demo/screens/common/routes.dart';
import 'package:customer_app_demo/screens/onboarding/onboardingscreen.dart';
import 'package:customer_app_demo/screens/themes/Themesscreen.dart';
import 'package:flutter/material.dart';
import 'package:storebounty_init/model/storedetailsmodel.dart';
import 'package:storebounty_init/storebountyinit.dart';
import 'package:storebounty_onboarding/entry/entrypoint.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StoreBountyInit.trigger(clearCache: true, isTest: false);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DashboardModel?>(
        future: StoreBountyInit.getStore(),
        builder: (context, AsyncSnapshot<DashboardModel?> snapshot) {
          if (snapshot.hasData) {
            return MaterialApp(
              title: snapshot.data?.data?.info?.name ?? "-",
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              routes: routes(),
              initialRoute: OnBoardingScreen.pageId,
            );
          }else if(snapshot.hasError){
            return MaterialApp(
              title: "Storebounty",
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              routes: routes(),
              initialRoute: OnBoardingScreen.pageId,
            );
          }else{
            return MaterialApp(
              title: "Storebounty",
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              routes: routes(),
              initialRoute: OnBoardingScreen.pageId,
            );
          }
        });
  }
}
