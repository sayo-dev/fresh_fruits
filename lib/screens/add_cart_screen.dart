import 'package:flutter/material.dart';
import 'package:fresh_fruits/screens/cart_screen.dart';

import '../constants.dart';
import '../size.config.dart';
import 'deals_screen.dart';

class AddCartScreen extends StatefulWidget {

  @override
  State<AddCartScreen> createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {
  bool indicator = true;
  int size = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(316),
            width: getProportionateScreenWidth(double.infinity),
            child: Image(
              image: AssetImage('images/cart_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:EdgeInsets.only(
                top: getProportionateScreenHeight(50)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Palette.kLightGrey,
                            size: 32,
                          )
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.share_outlined,
                            color: Palette.kLightGrey,
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(167),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotIndicator(
                      color: Color.fromRGBO(255, 255, 255, 0.24),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(3),
                    ),
                    DotIndicator(
                      color: Color.fromRGBO(255, 255, 255, 0.24),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(3),
                    ),
                    DotIndicator(
                      color: Palette.kLightGrey,
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(12),
                ),
                Expanded(
                  child: Container(
                    width: getProportionateScreenWidth(double.infinity),
                    height: getProportionateScreenHeight(500),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                        )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: getProportionateScreenHeight(16),
                          left: getProportionateScreenWidth(20),
                          right: getProportionateScreenWidth(20)
                      ),
                      child: ListView(
                        children: [
                          Text(
                            'FRUITS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: getProportionateScreenWidth(14),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins_SemiBold'
                            ),
                          ),
                          Text(
                            'Fresh Orange',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: getProportionateScreenWidth(24),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins_Mmedium'
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(7),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  '\$4.9',
                                  style: TextStyle(
                                      color: Palette.kPrimaryColor,
                                      fontSize: getProportionateScreenWidth(24),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins_Medium'
                                  )
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: size < 1 ? null : IconButton(
                                        onPressed: (){
                                          setState(() {
                                            size--;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove,
                                          color: Palette.kPrimaryColor,
                                        )
                                    ),
                                  ),
                                  Text(
                                      '${size.toString()}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: getProportionateScreenWidth(20),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins_Medium'
                                      )
                                  ),
                                  IconButton(
                                      onPressed: (){
                                        setState(() {
                                          size++;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Palette.kPrimaryColor,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.star_rate,
                                        color: Palette.kPrimaryColor,
                                      )
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: getProportionateScreenWidth(18),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins_Medium'
                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(9),
                                  ),
                                  Text(
                                    '(128 reviews)',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: getProportionateScreenWidth(14),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins_Regular'
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset('images/peoples.png')
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(32),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'Description',
                                  style: TextStyle(
                                      color:  Colors.black,
                                      fontSize: getProportionateScreenWidth(18),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins_SemiBold'
                                  )
                              ),
                              Text(
                                  'Review',
                                  style: TextStyle(
                                      color:Color(0xff959A9B),
                                      fontSize: getProportionateScreenWidth(18),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins_SemiBold'
                                  )
                              ),
                              Text(
                                  'Discussion',
                                  style: TextStyle(
                                      color: Color(0xff959A9B),
                                      fontSize: getProportionateScreenWidth(18),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins_SemiBold'
                                  )
                              )
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Container(
                            width: getProportionateScreenWidth(319),
                            height: getProportionateScreenHeight(1.5),
                            decoration: BoxDecoration(
                                color: Color(0xffDDDDDD),
                                borderRadius: BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              children: [
                                Container(
                                  width: getProportionateScreenWidth(319/3),
                                  height: getProportionateScreenHeight(1.5),
                                  decoration: BoxDecoration(
                                      color: indicator ? Palette.kPrimaryColor : Color(0xffDDDDDD),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(319/3),
                                  height: getProportionateScreenHeight(1.5),
                                  decoration: BoxDecoration(
                                      color: indicator ? Color(0xffDDDDDD) : Palette.kPrimaryColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(319/3),
                                  height: getProportionateScreenHeight(1.5),
                                  decoration: BoxDecoration(
                                      color: indicator ? Color(0xffDDDDDD) : Palette.kPrimaryColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(23),
                          ),
                          SingleChildScrollView(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n'
                                  ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna'
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n'
                                  ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins_Regular'
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(23),
                          ),
                          Padding(
                            padding:EdgeInsets.only(bottom: getProportionateScreenHeight(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: (){},
                                  child: Icon(
                                      Icons.favorite
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32)
                                      ),
                                      primary: Color(0xff12B76A),
                                      minimumSize: Size(
                                          getProportionateScreenWidth(93),
                                          getProportionateScreenHeight(60)
                                      )
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder:(context) => CartScreen() ));
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getProportionateScreenWidth(16),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins_SemiBold'
                                        ),
                                      ),
                                      Text(
                                        '\$70.7',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getProportionateScreenWidth(14),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins_SemiBold'
                                        ),
                                      )
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32)
                                      ),
                                      primary: Palette.kPrimaryColor,
                                      minimumSize: Size(
                                          getProportionateScreenWidth(206),
                                          getProportionateScreenHeight(60)
                                      )
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}