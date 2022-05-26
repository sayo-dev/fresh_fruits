import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/size.config.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({required this.categoryOnPressed, required this.trendingOnPressed});
  Function() categoryOnPressed;
  Function() trendingOnPressed;

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedSlider = 0;
  int _selectedCardSlider = 0;
  bool fc= false;
  bool sc= false;
  bool tc= false;
  bool lc= false;

  List<Map<String, String>> catSlide = [
    {
      'image': 'images/ban.png'
    },
    {
      'image': 'images/mush.png'
    },
    {
      'image': 'images/can.png'
    },
    {
      'image': 'images/pot.png'
    }

  ];
  List<Map<String, String>> slider = [
    {
      'image': 'images/content1.png',
      'text': 'Recomended\nRecipe Today'
    },
    {
      'image': 'images/content2.png',
      'text': 'Fresh Fruits\nDelivery'
    }

  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0xffFAFEFC),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(28)
          ),
          child: Expanded(
            child: Container(
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins_regular'
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:getProportionateScreenWidth(28)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Damon Sims',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins_SemiBold'
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Color(0xff384144),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(18),
                  ),
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: getProportionateScreenHeight(162),
                              width: getProportionateScreenWidth(double.infinity),
                              child: PageView.builder(
                                itemCount: slider.length,
                                  controller: PageController(viewportFraction: 0.84),
                                  onPageChanged: (index){
                                  setState(() {
                                    _selectedSlider = index;
                                  });
                                  },
                                  itemBuilder: (context, index) {
                                    return View1(
                                      image: slider[index]['image'] as String,
                                      text: slider[index]['text'] as String,
                                    );

                              }),
                            ),
                        SizedBox(height: getProportionateScreenHeight(18)),
                        Padding(
                          padding: EdgeInsets.only(right: getProportionateScreenWidth(28)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins_SemiBold',
                                  color: Colors.black
                                ),
                              ),
                              IconButton(
                                onPressed: widget.categoryOnPressed,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(13),
                        ),
                        Container(
                          height: getProportionateScreenHeight(73),
                          width: getProportionateScreenWidth(double.infinity),
                          child: PageView.builder(
                            itemCount: catSlide.length,
                              controller: PageController(viewportFraction: 0.3),
                              onPageChanged: (index){
                              setState(() {
                                _selectedCardSlider = index;
                              });
                              },
                              itemBuilder: (context, index){
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: getProportionateScreenWidth(8),
                                  bottom: getProportionateScreenHeight(5)
                                  ),
                                  child: CategorySlide(
                                    image: catSlide[index]['image'] as String,
                                  ),
                                );
                              }
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18)),
                        Padding(
                          padding: EdgeInsets.only(right: getProportionateScreenWidth(28)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trending Deals',
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins_SemiBold',
                                    color: Colors.black
                                ),
                              ),
                              IconButton(
                                onPressed: widget.trendingOnPressed,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(18)),
                           Padding(
                            padding: EdgeInsets.only(right: getProportionateScreenWidth(28)),
                            child: Column(
                                        children: [
                                          Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          GestureDetector(
                                            onDoubleTap: (){
                                              setState(() {
                                                fc = !fc;
                                              });
                                            },
                                            child: TrendingCard(
                                            image: 'images/td1.png',
                                            name: 'Avocado',
                                            price: '\$6.7',
                                              color: fc ? Colors.red : Color(0xffF2F2F2),
                                              onPressed: (){
                                              setState(() {
                                                fc = !fc;
                                              });
                                              },
                                            ),
                                          ),
                                          GestureDetector(
                                            onDoubleTap: (){
                                              setState(() {
                                                sc = !sc;
                                              });
                                            },
                                            child: TrendingCard(
                                            image: 'images/td2.png',
                                            name: 'Brocoli',
                                            price: '\$8.7',
                                              color: sc ? Colors.red : Color(0xffF2F2F2),
                                              onPressed: (){
                                                setState(() {
                                                  sc = !sc;
                                                });
                                              },
                                            ),
                                          )
                                          ],
                                          ),
                                          SizedBox(height: getProportionateScreenHeight(16)),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onDoubleTap: (){
                                                  setState(() {
                                                    tc = !tc;
                                                  });
                                                },
                                                child: TrendingCard(
                                                  image: 'images/td3.png',
                                                  name: 'Tomatoes',
                                                  price: '\$4.9',
                                                  color: tc ? Colors.red : Color(0xffF2F2F2),
                                                  onPressed: (){
                                                    setState(() {
                                                      tc = !tc;
                                                    });
                                                  },
                                                ),
                                              ),
                                              GestureDetector(
                                                onDoubleTap: (){
                                                  setState(() {
                                                    lc = !lc;
                                                  });
                                                },
                                                child: TrendingCard(
                                                  image: 'images/td4.png',
                                                  name: 'Grapes',
                                                  price: '\$7.2',
                                                  color: lc ? Colors.red : Color(0xffF2F2F2),
                                                  onPressed: (){
                                                    setState(() {
                                                      lc = !lc;
                                                    });
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: getProportionateScreenHeight(40)),
                                          ElevatedButton(
                                              onPressed: (){},
                                              child: Text(
                                                'More',
                                                style: TextStyle(
                                                  color: Color(0xffF2F2F2),
                                                  fontSize: getProportionateScreenWidth(16),
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins_SemiBold'
                                                ),
                                              ),
                                            style:ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)
                                              ),
                                              primary: Colors.black,
                                              minimumSize: Size(
                                              getProportionateScreenWidth(double.infinity),
                                               getProportionateScreenHeight(60)
                                              )
                                            ),
                                          ),
                                          SizedBox(height: getProportionateScreenHeight(40)),
                                        ],
                                      )
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
        ),
      ),
    );
  }
}

class TrendingCard extends StatelessWidget {

  TrendingCard({required this.image, required this.name,
    required this.price, required this.onPressed, required this.color});
  String name, price, image;
  Function() onPressed;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(199),
      width: getProportionateScreenWidth(150),
      child: Stack(
        children: [
          Image(
            image: AssetImage('$image'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(14),
              right: getProportionateScreenWidth(14),
              top: getProportionateScreenHeight(16),
              bottom: getProportionateScreenHeight(28)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                 icon: Icon(
                     Icons.favorite,
                    color: color
                 ),
                  onPressed: onPressed
                ),
                Spacer(),
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xffF2F2F2),
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins_Medium'
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xffF2F2F2),
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins_Bold'
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

class CategorySlide extends StatelessWidget {

  CategorySlide({required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19)
      ),
      elevation: 6.0,
      child: Container(
        height: getProportionateScreenHeight(73),
        width: getProportionateScreenWidth(93),
        child: Image(
          image: AssetImage('$image'),
        ),
      ),
    );
  }
}


class View1 extends StatelessWidget {

  View1({required this.image, required this.text});
  String text, image;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: getProportionateScreenWidth(290),
      height: getProportionateScreenHeight(162),
      child: Stack(
        children: [
          Image(
            image: AssetImage('$image'),
            fit: BoxFit.contain,
          ),
          Padding(
            padding:EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              top: getProportionateScreenHeight(80),
              bottom: getProportionateScreenHeight(21)
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Poppins_SemiBold'
              ),
            ),
          )
        ],
      ),
    );
  }
}
