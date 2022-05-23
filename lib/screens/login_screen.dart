import 'package:flutter/material.dart';
import 'package:fresh_fruits/screens/login_background.dart';
import 'package:fresh_fruits/size.config.dart';

import '../constants.dart';
import 'create_account_screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return LoginBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
              child:  SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                  child: IconButton(
                    onPressed:(){
                      Navigator.pushNamed(context, 'OnBoardingScreen');
                    } ,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xffF2F2F2),
                      size: 42,
                    ),
                  ),
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(278)
            ),
            child: Container(
              height: getProportionateScreenHeight(405),
              width: getProportionateScreenWidth(double.infinity),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                  )
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins_SemiBold'
                          ),
                        ),
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.cancel,
                              size: 28,
                              color: Colors.black,
                            )
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(40),),
                    FieldText(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: _obscureText,
                      hintText: 'Email',
                      enabledBorderColor: Color(0xffCACACA),
                      focusedBorderColor: Color(0xffCACACA),

                    ),
                    SizedBox(height: getProportionateScreenHeight(15),),
                    FieldText(
                      keyboardType: null,
                      hintText: 'Password',
                      enabledBorderColor: Color(0xffCACACA),
                      focusedBorderColor: Color(0xffCACACA),
                      obscureText: _obscureText,
                      suffixIcon: _obscureText ? IconButton(
                        onPressed: _toggle,
                        icon:  Icon(
                          Icons.visibility_off,
                          color: Color(0xff66000000),
                        ),
                      ) : IconButton(
                        onPressed: _toggle,
                        icon:  Icon(
                          Icons.visibility,
                          color: Color(0xff66000000),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins_Medium',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffE67F1E),
                        ),
                      ),

                    ),
                    SizedBox(height: getProportionateScreenHeight(15),),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'NavScreen');
                      },
                      child: Text(
                        'SIGN IN',
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

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}