import 'package:flutter/material.dart';
import 'package:fresh_fruits/size.config.dart';

class LoginBackground extends StatelessWidget {

  LoginBackground({this.child});
  Widget? child;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children:[ Padding(
          padding: EdgeInsets.only(bottom: getProportionateScreenHeight(385)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('images/sign_in_image.png'),
                )
            ),
          ),
        ),
          child!
            ]
      ),
    );
  }
}

