import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/track_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class ProcessScreen extends StatelessWidget {

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(84)),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('images/Group 439.png'),
                    SizedBox(height: getProportionateScreenHeight(111)),
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
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(28),
                    right: getProportionateScreenWidth(28),
                  bottom: getProportionateScreenHeight(25)
                ),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackScreen()));
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
        ),
      ),
    );
  }
}
