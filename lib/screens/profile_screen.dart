import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/size.config.dart';

class ProfileScreen extends StatefulWidget {

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin{
  late Animation _animation;
  late AnimationController _animationController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _animationController = AnimationController(
        vsync: this,
      duration: Duration(seconds: 4)
    );
    
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutCubic);
    _animationController.forward();
    
    _animation.addStatusListener((status) { 
      if(status == AnimationStatus.completed){
        _animationController.reverse();
      } else if(status == AnimationStatus.dismissed){
        _animationController.forward();
      }
    });
    
    _animation.addListener(() { 
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animation;
    _animationController;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            height: getProportionateScreenHeight(_animation.value * 150),
              child: Image(
                  image: AssetImage('images/emoji2.jfif'),
                fit: BoxFit.cover,
              )
          )
        ),

      ),
    );
  }
}
