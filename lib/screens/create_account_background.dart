import 'package:flutter/material.dart';
import 'package:fresh_fruits/size.config.dart';

class CreateAccountBackground extends StatelessWidget {

  CreateAccountBackground({this.child});
  Widget? child;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/create_account_image.png'),
            colorFilter: ColorFilter.srgbToLinearGamma()
          )
        ),
        child: child ,
      ),
    );
  }
}
