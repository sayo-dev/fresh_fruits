import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/check_out.dart';
import 'package:fresh_fruits/size.config.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  String? get;
 int increment = 1;
  bool dragged = false;

  List<Map<String, String>> items = [
    {
      'image': 'images/cg1.png',
      'initialAmount': '\$7.2',
      'title': 'FRUITS',
      'text': 'Banana',
      'increment': '0'
    },
    {
      'image': 'images/cg2.png',
      'initialAmount': '\$6.3',
      'title': 'VEGETABLES',
      'text': 'Broccoli',
      'increment': '0'
    },
    {
      'image': 'images/cg3.png',
      'initialAmount': '\$2.7',
      'title': 'MUSHROOM',
      'text': 'Oyster Mushroom',
      'increment': '0'
    },

  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(35),
                    right: getProportionateScreenWidth(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins_SemiBold'
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
                        },
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                              color: Palette.kAppBarIconColor,
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins_Medium'
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                       itemBuilder: (context, index) {
                         return Column(
                           children: [
                             GestureDetector(
                               onHorizontalDragStart: (drag){
                                 setState(() {
                                   dragged = !dragged;
                                 });
                               },
                               child: !dragged ?  ItemContainer(
                                 image: items[index]['image'] as String,
                                 initialAmount: items[index]['initialAmount'] as String,
                                 title: items[index]['title'] as String,
                                 text: items[index]['text'] as String,
                                 totalAmount: items[index]['initialAmount'] as String,
                                 // totalAmount:  ( (items[index]['initialAmount'] as String) * items[index]['increment'] as String).toString(),
                                 increment: increment.toString(),
                                 onPressed1: (){
                                   setState(() {
                                     get = items[index]['increment'];
                                     increment = get as int;
                                     increment --;
                                   });
                                 },
                                 onPressed2: (){
                                   setState(() {
                                     get = items[index]['increment'];
                                     increment = get as int;
                                     increment ++;
                                   });
                                 },

                               ) : null,
                             ),
                           ],
                         );
                       }),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {

  ItemContainer({required this.image, required this.initialAmount,required this.title,
    required this.text, required this.totalAmount, required this.onPressed1, required this.onPressed2, required this.increment
  });
  String image, initialAmount, title, text, totalAmount, increment;
  Function() onPressed1, onPressed2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: getProportionateScreenHeight(137),
      width: getProportionateScreenWidth(double.infinity),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(12)
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('$image'),
                  fit: BoxFit.contain
                ),
                Padding(
                  padding:EdgeInsets.only(
                    top: getProportionateScreenHeight(73)
                  ),
                  child: Container(
                    width: getProportionateScreenWidth(90),
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                      color: Palette.kPrimaryColor,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text(
                        initialAmount,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins_Medium'
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xff99000000),
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins_Medium'
                          ),
                        ),
                        Text(
                          text,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins_Medium'
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      totalAmount,
                      style: TextStyle(
                          color: Palette.kAppBarIconColor,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins_Medium'
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(50)),
                    Container(
                      width: getProportionateScreenWidth(113),
                      height: getProportionateScreenHeight(35),
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: onPressed1,
                                icon: Icon(
                                  Icons.remove,
                                  color:Color(0xffB1B1B1) ,
                                )
                            ),
                            Text(
                              increment,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins_Medium'
                              ),
                            ),
                            IconButton(
                                onPressed: onPressed2,
                                icon: Icon(
                                  Icons.add,
                                  color:Color(0xffB1B1B1) ,
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
