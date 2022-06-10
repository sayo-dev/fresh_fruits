import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/onboarding_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3)
    );

    _animation = CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut);

    _animationController.forward();


    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        _animationController.reverse();
      } else if(status == AnimationStatus.dismissed){
        _animationController.forward();
      }
    });

   _animation.addListener(() {
     setState(() {});
   });

    Timer(
      Duration(seconds: 12),
        ()=>Navigator.pushReplacementNamed(context, 'OnBoardingScreen')
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animation.isDismissed;
    _animationController.dispose();
    super.dispose();
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
             child: Container(
               height: getProportionateScreenHeight(_animation.value * 276),
               child: Image(
                 image: AssetImage('images/splash_image.png'),
               ),
             ),
           ),
         ),
        ],
      )
    );
  }
}
