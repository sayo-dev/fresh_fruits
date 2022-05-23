import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/onboarding_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 8),
        ()=>Navigator.pushReplacementNamed(context, 'OnBoardingScreen')
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         Padding(
           padding:EdgeInsets.only(bottom: getProportionateScreenHeight(127)),
           child: Center(
             child: Image(
               image: AssetImage('images/splash_image.png'),
             ),
           ),
         ),
        ],
      )
    );
  }
}
