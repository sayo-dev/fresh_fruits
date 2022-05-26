import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/home_page_screen.dart';
import 'package:fresh_fruits/size.config.dart';

import 'add_cart_screen.dart';

class DealsScreen extends StatefulWidget {

  DealsScreen({required this.onPressed});
  Function() onPressed;

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  bool c1= false; bool c2= false; bool c3= false;
  bool c4= false; bool c5= false; bool c6= false;
  bool c7= false; bool c8= false; bool c9= false;
  bool c10= false; bool c11= false; bool c12= false;



  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Palette.kPrimaryColor,
        elevation: 0,
        leading:  Padding(
          padding: EdgeInsets.only(left: getProportionateScreenHeight(20)),
          child: IconButton(
              onPressed: widget.onPressed,
              icon: Icon(Icons.arrow_back,
                color: Palette.kLightGrey,
                size: 30,)
          ),
        ),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.filter_list,
                  color: Palette.kLightGrey,
                  size: 30,)
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              height: getProportionateScreenHeight(150),
              width: getProportionateScreenWidth(double.infinity),
              color: Palette.kPrimaryColor,
            ),
          ),
          Padding(
            padding:EdgeInsets.only(
              top: getProportionateScreenHeight(33)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(28),
                      right: getProportionateScreenWidth(28)
                  ),
                  child: Text(
                    'Fruits Category',
                    style: TextStyle(
                      color: Palette.kLightGrey,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins_SemiBold'
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Padding(
                      padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(28),
                      right: getProportionateScreenWidth(28)),
                  child: Text(
                    '87 Items',
                    style: TextStyle(
                        color: Palette.kLightGrey,
                        fontSize: getProportionateScreenWidth(14),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins_Regular'
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Expanded(
                  child: Container(
                    height: getProportionateScreenHeight(double.infinity),
                    width: getProportionateScreenWidth(double.infinity),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(
                        top: getProportionateScreenHeight(22),
                          left: getProportionateScreenWidth(28),
                          right: getProportionateScreenWidth(28)
                      ),
                      child: Column(
                        children: [
                          TextField(
                            cursorColor:Color(0xff898989),
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF0F0F0),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff898989),
                                ),
                                hintText: 'Search here',
                                hintStyle: TextStyle(
                                  color:Color(0xff898989),
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins_Regular'
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18)
                                ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white
                              )
                            ),
                              disabledBorder:  OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              enabledBorder:  OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              )
                            ),
                            onChanged: (String value) {
                            },
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(18),
                          ),
                          Expanded(
                            child: Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap:(){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (context)=> AddCartScreen())
                                            );
                                          },
                                          child: GestureDetector(
                                            onDoubleTap: (){
                                              setState(() {
                                                c1 = !c1;
                                              });
                                            },
                                            child: TrendingCard(
                                                image: 'images/trend1.png',
                                                name: 'Avocado',
                                                price: '\$6.7',
                                                onPressed: (){
                                                  setState(() {
                                                    c1 = !c1;
                                                  });
                                                },
                                                color: c1 ? Colors.red : Colors.white
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onDoubleTap: (){
                                            setState(() {
                                              c2 = !c2;
                                            });
                                          },
                                          child: TrendingCard(
                                              image: 'images/trend2.png',
                                              name: 'Blueberry',
                                              price: '\$8.7',
                                              onPressed: (){
                                                setState(() {
                                                  c2 = !c2;
                                                });
                                              },
                                              color: c2 ? Colors.red : Colors.white
                                          ),
                                        ),
                                      ],
                                    ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c3 = !c3;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend3.png',
                                          name: 'Orange',
                                          price: '\$4.9',
                                          onPressed: (){
                                            setState(() {
                                              c3 = !c3;
                                            });
                                          },
                                          color: c3 ? Colors.red : Colors.white
                                      ),
                                    ),
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c4 = !c4;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend4.png',
                                          name: 'Banana',
                                          price: '\$7.2',
                                          onPressed: (){
                                            setState(() {
                                              c4 = !c4;
                                            });
                                          },
                                          color: c4 ? Colors.red : Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c5 = !c5;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend5.png',
                                          name: 'Tomatoes',
                                          price: '\$4.9',
                                          onPressed: (){
                                            setState(() {
                                              c5 = !c5;
                                            });
                                          },
                                          color: c5 ? Colors.red : Colors.white
                                      ),
                                    ),
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c6 = !c6;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend6.png',
                                          name: 'Grapes',
                                          price: '\$7.7',
                                          onPressed: (){
                                            setState(() {
                                              c6 = !c6;
                                            });
                                          },
                                          color: c6 ? Colors.red : Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c7 = !c7;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend7.png',
                                          name: 'Mixed',
                                          price: '\$6.7',
                                          onPressed: (){
                                            setState(() {
                                              c7 = !c7;
                                            });
                                          },
                                          color: c7 ? Colors.red : Colors.white
                                      ),
                                    ),
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c8 = !c8;
                                        });
                                      },
                                      child: GestureDetector(
                                        onDoubleTap: (){
                                          setState(() {
                                            c8 = !c8;
                                          });
                                        },
                                        child: TrendingCard(
                                            image: 'images/trend8.png',
                                            name: 'Strawberry',
                                            price: '\$8.7',
                                            onPressed: (){
                                              setState(() {
                                                c8 = !c8;
                                              });
                                            },
                                            color: c8 ? Colors.red : Colors.white
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c9 = !c9;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend9.png',
                                          name: 'Apple',
                                          price: '\$5.4',
                                          onPressed: (){
                                            setState(() {
                                              c9 = !c9;
                                            });
                                          },
                                          color: c9 ? Colors.red : Colors.white
                                      ),
                                    ),
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c10 = !c10;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend10.png',
                                          name: 'Pawpaw',
                                          price: '\$6.2',
                                          onPressed: (){
                                            setState(() {
                                              c10 = !c10;
                                            });
                                          },
                                          color: c10 ? Colors.red : Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c11 = !c11;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend11.png',
                                          name: 'Pineapple',
                                          price: '\$8.9',
                                          onPressed: (){
                                            setState(() {
                                              c11 = !c11;
                                            });
                                          },
                                          color: c11 ? Colors.red : Colors.white
                                      ),
                                    ),
                                    GestureDetector(
                                      onDoubleTap: (){
                                        setState(() {
                                          c12 = !c12;
                                        });
                                      },
                                      child: TrendingCard(
                                          image: 'images/trend12.png',
                                          name: 'Orange',
                                          price: '\$6.8',
                                          onPressed: (){
                                            setState(() {
                                              c12 = !c12;
                                            });
                                          },
                                          color: c12 ? Colors.red : Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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

class DotIndicator extends StatelessWidget {

  DotIndicator({this.color});
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(23),
      height: getProportionateScreenHeight(6),
      decoration: BoxDecoration(
          color: color,
        borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}

