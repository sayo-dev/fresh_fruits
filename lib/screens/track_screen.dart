import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/size.config.dart';

class Review extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding:EdgeInsets.only(left: getProportionateScreenWidth(8)),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel,
              color: Palette.kAppBarIconColor,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Thank You',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins_SemiBold'
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/Group 439.png'),
          Column(
            children: [
              Text(
                'Your Order in process',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins_SemiBold'
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text(
                'Lorem ipsum dolor sit amet, consectetur\n        adipiscing elit, sed do eiusmod',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins_Regular'
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
            child: ElevatedButton(
              onPressed: (){
              },
              child: Text(
                'TRACK YOUR ORDER',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'fonts/Poppins-Black.ttf'
                ),
              ),

              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  primary: Palette.kPrimaryColor,
                  minimumSize: Size(double.infinity, getProportionateScreenHeight(50.0))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
