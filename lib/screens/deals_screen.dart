import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/home_page_screen.dart';
import 'package:fresh_fruits/size.config.dart';

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
                                                MaterialPageRoute(builder: (context)=> AddCart())
                                            );
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
                                        TrendingCard(
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
                                      ],
                                    ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TrendingCard(
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
                                    TrendingCard(
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
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TrendingCard(
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
                                    TrendingCard(
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
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TrendingCard(
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
                                    TrendingCard(
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
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TrendingCard(
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
                                    TrendingCard(
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
                                  ],
                                ),
                                SizedBox(height: getProportionateScreenHeight(16)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TrendingCard(
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
                                    TrendingCard(
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

class AddCart extends StatefulWidget {

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  bool indicator = true;
  int size = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
            Expanded(
              child: Container(
                child: Container(
                  height: getProportionateScreenHeight(316),
                  width: getProportionateScreenWidth(double.infinity),
                  child: Image(
                    image: AssetImage('images/cart_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(
                top: getProportionateScreenHeight(50)
              ),
              child: Expanded(
                child: Container(
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
                          height: getProportionateScreenHeight(double.infinity),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Expanded(
                                  child: Container(
                                    child: SingleChildScrollView(
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n'
                                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna'
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n'
                                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. eiusmod tempor incididunt ut labore et dolore magna'
                                      ),
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
                                        onPressed: (){},
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
                ),
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

