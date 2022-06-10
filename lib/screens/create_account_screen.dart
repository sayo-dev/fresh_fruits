import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/size.config.dart';

class CreateAccountScreen extends StatefulWidget {

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _obscureText = true;

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return  AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        content: SizedBox(
          height: getProportionateScreenHeight(380),
          width: getProportionateScreenWidth(333),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding:EdgeInsets.only(
                      left: getProportionateScreenWidth(10),
                    right: getProportionateScreenWidth(5)
                  ),
                  child: Image(
                    image: AssetImage('images/ribbon.png'),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(42),
                    bottom: getProportionateScreenHeight(18),
                    left: getProportionateScreenWidth(15),
                    right: getProportionateScreenWidth(20)
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Congratulations!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:Color(0xffE67F1E),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter-Bold'
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      Text(
                        'Md Rafatul Islam',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color:Color(0xff7A1E76),
                            fontSize: 12.9,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter-Bold'
                        ),
                      ),
                         SizedBox(height: getProportionateScreenHeight(210)),
                         ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, 'LoginScreen');
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
                              minimumSize: Size(double.infinity, getProportionateScreenHeight(46.0))
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Stack(
       children: [
         Padding(
           padding: EdgeInsets.only(bottom: getProportionateScreenHeight(455)),
           child: Container(
             height: double.infinity,
             width: double.infinity,
             decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fitWidth,
                   image: AssetImage('images/create_account_image.png'),
                 )
             ),
           ),
         ),
         SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SafeArea(
                 child: Padding(
                   padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                   child: IconButton(
                     onPressed:(){
                       Navigator.pop(context);
                     } ,
                     icon: Icon(
                       Icons.arrow_back,
                       color: Color(0xffF2F2F2),
                       size: 42,
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(top: getProportionateScreenHeight(203)),
                 child: Container(
                   width: getProportionateScreenWidth(double.infinity),
                   height: getProportionateScreenHeight(480),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(25),
                       topRight: Radius.circular(25)
                     )
                   ),
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                           SizedBox(
                             height: getProportionateScreenHeight(10),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Create your account',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                   fontFamily: 'Poppins_SemiBold'
                                 ),
                               ),
                               IconButton(
                                   onPressed: (){
                                     Navigator.pushReplacementNamed(context, 'LoginScreen');
                                   },
                                   icon: Icon(
                                     Icons.cancel,
                                     size: 28,
                                     color: Colors.black,
                                   )
                               )
                             ],
                           ),
                           SizedBox(height: getProportionateScreenHeight(40),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               FieldEdit(
                                 keyboardType: TextInputType.text,
                                 hintText: 'First Name',
                               ),
                               FieldEdit(
                                 keyboardType: TextInputType.text,
                                 hintText: 'Last Name',
                               )
                             ],
                           ),
                           SizedBox(height: getProportionateScreenHeight(15),),
                           FieldText(
                             obscureText: _obscureText,
                             keyboardType: TextInputType.emailAddress,
                             hintText: 'Email',
                             enabledBorderColor: Palette.kAppBarIconColor,
                             focusedBorderColor: Palette.kAppBarIconColor,
                           ),
                           SizedBox(height: getProportionateScreenHeight(15),),
                           FieldText(
                             keyboardType: null,
                             hintText: 'Password',
                             enabledBorderColor: Palette.kAppBarIconColor,
                             focusedBorderColor: Palette.kAppBarIconColor,
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
                           SizedBox(height: getProportionateScreenHeight(15),),
                           Column(
                             children: [
                               DescriptionText(
                                 text: 'By tapping Sign up you accept all',
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   ColoredText(
                                     text: 'terms',
                                       onPressed: (){
                                       print('yo! its me terms');
                                       },
                                   ),
                                   DescriptionText(
                                     text: 'and',
                                   ),
                                   ColoredText(
                                     text: 'condition',
                                     onPressed: (){
                                       print('yo! its me conditions');
                                     },
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(height: getProportionateScreenHeight(15),),
                           ElevatedButton(
                             onPressed: (){
                              createAlertDialog(context);
                             },
                             child: Text(
                               'CREATE AN ACCOUNT',
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
                 ),
               )

             ],
           ),
         ),
       ],
     ),
    );

  }
}

class FieldText extends StatelessWidget {

  FieldText({this.hintText, this.suffixIcon, required this.obscureText,
  this.enabledBorderColor, this.focusedBorderColor, this.keyboardType
  });
  String? hintText;
  Widget? suffixIcon;
  bool obscureText;
  TextInputType? keyboardType;
  Color? enabledBorderColor, focusedBorderColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: Colors.black,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color(0xff9C9F9E),
            fontSize: 15
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor!
          ),
          borderRadius: BorderRadius.circular(35)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: focusedBorderColor!
            ),
            borderRadius: BorderRadius.circular(35)
        ),
      ),
    );
  }
}

class FieldEdit extends StatelessWidget {

  FieldEdit({this.hintText, this.keyboardType});
  String? hintText;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: Palette.kAppBarIconColor
        )
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(9)),
        child: TextField(
          keyboardType: keyboardType,
          cursorColor: Colors.black,
          cursorWidth: 1.5,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff9C9F9E),
              fontSize: 15
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  String? text;
  DescriptionText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins_SemiBold',
        color: Colors.black,
      ),
    );
  }
}

class ColoredText extends StatelessWidget {

  ColoredText({this.text, this.onPressed});
  String? text;
  Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
     child: Text(
         text!,
       style: TextStyle(
         fontSize: 14,
         fontFamily: 'Poppins_SemiBold',
         fontWeight: FontWeight.w600,
         color: Palette.kPrimaryColor,
       ),
     ),

    );
  }
}
