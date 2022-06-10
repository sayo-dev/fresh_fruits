import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/nav_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4)
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
      body: SafeArea(
        child: Center(
          child: Icon(
            Icons.favorite,
            color: Colors.white,
            size: _animation.value * 100,
          ),
        ),
      ),
    );
  }
}
