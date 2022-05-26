import 'package:flutter/material.dart';
import 'package:fresh_fruits/screens/review_screen.dart';

import '../constants.dart';
import '../size.config.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
          'Order Tracking',
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins_SemiBold'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(30)),
              child: Container(
                width: getProportionateScreenWidth(254),
                height: getProportionateScreenHeight(155),
                child: Image(
                  image: AssetImage('images/bike.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(63)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          color:Palette.kAppBarIconColor,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
                        child: Container(
                          width:getProportionateScreenWidth(2),
                          height: getProportionateScreenHeight(100),
                          decoration: BoxDecoration(
                              color: Palette.kAppBarIconColor,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                      Container(
                        width: getProportionateScreenWidth(32),
                        height: getProportionateScreenHeight(32),
                        decoration: BoxDecoration(
                            color: Palette.kAppBarIconColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
                        child: Container(
                          width:getProportionateScreenWidth(2),
                          height: getProportionateScreenHeight(120),
                          decoration: BoxDecoration(
                              color: Color(0xffB1B1B1),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: getProportionateScreenWidth(3)),
                        child: Container(
                          width: getProportionateScreenWidth(25),
                          height: getProportionateScreenHeight(25),
                          decoration: BoxDecoration(
                              color: Color(0xffB1B1B1),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(113),
                    right: getProportionateScreenWidth(28)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tracker(
                        title: 'step 1',
                        text: 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod'
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(59),
                      ),
                      Tracker(
                          title: 'step 2',
                          text: 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod'
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                      ),
                      Tracker(
                          title: 'step 3',
                          text: 'Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod'
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(29),
            ),
           Padding(
              padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(28)
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewScreen()));
                },
                child: Text(
                  'SUBMIT REVIEW',
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
    );
  }
}

class Tracker extends StatelessWidget {

  Tracker({required this.title, required this.text});
  String title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins_SemiBold'
          ),
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins_Regular'
          ),
        ),
      ],
    );
  }
}
