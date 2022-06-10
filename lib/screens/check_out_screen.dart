
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/process_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class CheckOutScreen extends StatefulWidget {

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {

  bool next = true;
  bool save = true;
  bool selectedColor = true;

  List<Map<String, String>> methodItems = [
    {
      'text': 'Cash on Delivery'
    },
    {
      'text': 'Credit Card'
    }
  ];

  List<Map<String, String>> cardItems = [
    {
      'image': 'images/card1.png'
    },
    {
      'image': 'images/card2.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Color(0xff384144),
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins_SemiBold'

          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(24),
                  bottom: getProportionateScreenHeight(16)
                ),
                color: Colors.white,
                width: getProportionateScreenWidth(double.infinity),
                height: getProportionateScreenHeight(112),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(75)
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(32),
                            height: getProportionateScreenHeight(32),
                            decoration: BoxDecoration(
                              color: Palette.kAppBarIconColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Icon(
                              Icons.circle,
                              color: next ? Colors.white : Palette.kAppBarIconColor,
                              size: 30,
                            ),
                          ),
                          Container(
                            width:getProportionateScreenWidth(150),
                            height: getProportionateScreenHeight(2),
                            decoration: BoxDecoration(
                              color: Color(0xffCBCBCB),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width:getProportionateScreenWidth(150/2),
                                  height: getProportionateScreenHeight(2),
                                  decoration: BoxDecoration(
                                      color: next ? Color(0xffCBCBCB) : Palette.kAppBarIconColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                Container(
                                  width:getProportionateScreenWidth(150/2),
                                  height: getProportionateScreenHeight(2),
                                  decoration: BoxDecoration(
                                      color:  Color(0xffCBCBCB),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(32),
                            height: getProportionateScreenHeight(32),
                            decoration: BoxDecoration(
                                color: next ? Color(0xffCBCBCB) : Palette.kAppBarIconColor,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Icon(
                              Icons.circle,
                              color: next ? Color(0xffCBCBCB) : Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(28)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping Address',
                            style: TextStyle(
                              color: next ? Colors.black : Palette.kAppBarIconColor,
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins_SemiBold'
                            ),
                          ),
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            color: next ? Color(0xffCBCBCB) : Colors.black,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins_SemiBold'
                        ),
                      )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(28),
                  vertical: getProportionateScreenHeight(24)
                ),
                  child: SingleChildScrollView(
                    child: next
                        ?
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FieldTitle(
                          text: 'Full Name',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Field(
                          hintText: 'Name',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        FieldTitle(
                          text: 'Email Address',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Field(
                          hintText: 'Email',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        FieldTitle(
                          text: 'Phone',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Field(
                          hintText: '+234 123456789',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        FieldTitle(
                          text: 'Address',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Field(
                          hintText: 'Type your home address',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FieldTitle(
                                  text: 'Zip Code',
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(10),
                                ),
                                SmallField(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FieldTitle(
                                  text: 'City',
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(10),
                                ),
                                SmallField()
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        FieldTitle(
                          text: 'Country',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Field(
                          hintText: 'Choose your country',
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  save = !save;
                                });
                              },
                              child: Container(
                                  width: getProportionateScreenWidth(24),
                                  height: getProportionateScreenHeight(24),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:Color(0xff12B76A)
                                      ),
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: save ? null : Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Container(
                                      width: getProportionateScreenWidth(12),
                                      height: getProportionateScreenHeight(12),
                                      decoration: BoxDecoration(
                                          color:Color(0xff12B76A),
                                          borderRadius: BorderRadius.circular(3)
                                      ),
                                    ),
                                  )

                              ),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(16),
                            ),
                            Text(
                              'Save shipping address',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins_Regular'
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                        :
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(double.infinity),
                          height: getProportionateScreenHeight(56),
                          child: PageView.builder(
                            itemCount: methodItems.length,
                              onPageChanged: (index){
                             setState(() {
                               selectedColor = !selectedColor;
                             });
                              },
                              controller: PageController(viewportFraction: 0.8),
                              itemBuilder: (context, index) => MethodSLider(
                                text: methodItems[index]['text'] as String,
                                color: selectedColor && index == 0 ? Palette.kPrimaryColor : !selectedColor && index == 1 ? Palette.kPrimaryColor : Colors.white,
                              )
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(38),
                        ),
                        Padding(
                          padding:EdgeInsets.all(0),
                          child: selectedColor ? Container(
                            width: getProportionateScreenWidth(double.infinity),
                            height: getProportionateScreenHeight(142),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image(
                              image: AssetImage('images/currency.jfif'),
                              fit: BoxFit.cover,
                            ),
                          ) : SizedBox(
                            width: getProportionateScreenWidth(double.infinity),
                            height: getProportionateScreenHeight(142),
                            child: PageView.builder(
                              controller: PageController(
                                viewportFraction: 0.8
                              ),
                              itemCount: cardItems.length,
                                itemBuilder: (context, index) => Padding(
                                  padding:EdgeInsets.only(right: getProportionateScreenWidth(15)),
                                  child: Container(
                                    width: getProportionateScreenWidth(216),
                                    height: getProportionateScreenHeight(141),
                                    child: Image(
                                      image: AssetImage(cardItems[index]['image'] as String),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: selectedColor ? Text(
                            'Please make your cash ready\non delivery!!!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color:Palette.kAppBarIconColor,
                              fontSize: getProportionateScreenWidth(20),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins_SemiBold'
                            ),
                          ) : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FieldTitle(
                                text: 'Card Holder Name',
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Field(
                                hintText: 'Md Rafatul islam',
                                color: Color(0xfEAEAEA),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              FieldTitle(
                                text: 'Card Number',
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Field(
                                hintText: '333 4444 5555 6666',
                                color: Color(0xfEAEAEA),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FieldTitle(
                                        text: 'Month/Year',
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(10),
                                      ),
                                      SmallField(),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FieldTitle(
                                        text: 'CVV',
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(10),
                                      ),
                                      SmallField()
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              FieldTitle(
                                text: 'Country',
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Field(
                                hintText: 'Choose your country',
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        save = !save;
                                      });
                                    },
                                    child: Container(
                                        width: getProportionateScreenWidth(24),
                                        height: getProportionateScreenHeight(24),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:Color(0xff12B76A)
                                            ),
                                            borderRadius: BorderRadius.circular(7)
                                        ),
                                        child: save ? null : Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Container(
                                            width: getProportionateScreenWidth(12),
                                            height: getProportionateScreenHeight(12),
                                            decoration: BoxDecoration(
                                                color:Color(0xff12B76A),
                                                borderRadius: BorderRadius.circular(3)
                                            ),
                                          ),
                                        )

                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(16),
                                  ),
                                  Text(
                                    'Save credit card details',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: getProportionateScreenWidth(16),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins_Regular'
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(28)
                ),
                child: next ? ElevatedButton(
                  onPressed: (){
                    setState(() {
                      next = !next;
                    });
                  },
                  child: Text(
                    'NEXT',
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
                ) : ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProcessScreen()));
                  },
                  child: Text(
                    'CONFIRM ORDER',
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

class SmallField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(149),
      height: getProportionateScreenHeight(54),
      child: Field(
        hintText: 'Enter here',
      ),
    );
  }
}

class MethodSLider extends StatelessWidget {

  MethodSLider({required this.text, required this.color});
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: getProportionateScreenWidth(15)),
      child: Container(
        width: getProportionateScreenWidth(194),
        height: getProportionateScreenHeight(56),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Palette.kPrimaryColor
          ),
          borderRadius: BorderRadius.circular(18)
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins_Medium'
            ),
          ),
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {

  Field({this.hintText, this.color});
  String? hintText;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: color,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color(0xffAFAFAF),
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins_Medium'
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color(0xffCACACA)
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Palette.kPrimaryColor
            )
        ),
      ),
    );
  }
}

class FieldTitle extends StatelessWidget {

  FieldTitle({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: Colors.black,
        fontSize: getProportionateScreenWidth(14),
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins_Medium'
      ),
    );
  }
}
