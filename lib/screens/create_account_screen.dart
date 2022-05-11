import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/create_account_background.dart';
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


  @override
  Widget build(BuildContext context) {
    return CreateAccountBackground(
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
         Spacer(),
         Container(
           width: double.infinity,
           height: getProportionateScreenHeight(450),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(25),
               topRight: Radius.circular(25)
             )
           ),
           child: Padding(
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
                       'Create your account',
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
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     FieldEdit(
                       hintText: 'First Name',
                     ),
                     FieldEdit(
                       hintText: 'Last Name',
                     )
                   ],
                 ),
                 SizedBox(height: getProportionateScreenHeight(15),),
                 FieldText(
                   obscureText: _obscureText,
                   hintText: 'Email',
                 ),
                 SizedBox(height: getProportionateScreenHeight(15),),
                 FieldText(
                   hintText: 'Password',
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
                     setState(() {
                     });
                   },
                   child: Text(
                     'SIGN UP',
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
         )

       ],
     ),
    );

  }
}

class FieldText extends StatelessWidget {

  FieldText({this.hintText, this.suffixIcon, required this.obscureText});
  String? hintText;
  Widget? suffixIcon;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            color: Palette.kAppBarIconColor
          ),
          borderRadius: BorderRadius.circular(35)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Palette.kAppBarIconColor
            ),
            borderRadius: BorderRadius.circular(35)
        ),
      ),
    );
  }
}

class FieldEdit extends StatelessWidget {

  FieldEdit({this.hintText});
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(115),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: Palette.kAppBarIconColor
        )
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(9)),
        child: TextField(
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
