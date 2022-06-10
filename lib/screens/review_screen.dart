import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fresh_fruits/screens/add_cart_screen.dart';
import 'package:fresh_fruits/size.config.dart';


class ReviewScreen extends StatefulWidget {

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  double rating = 0.5;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
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
          'Write Reviews',
          style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins_SemiBold'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(28)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Center(
                child: Text(
                  'Tell Us to Improve',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins_SemiBold'
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins_Regular'
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(31),
              ),
              Center(
                child: Text(
                  rating.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(50),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins_SemiBold'
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Center(
                child: RatingBar.builder(
                  initialRating: rating,
                  allowHalfRating: true,
                  minRating: 1,
                  maxRating: 5,
                  onRatingUpdate: (rate){
                    setState(() {
                     rating = rate;
                    });
                  },
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Palette.kPrimaryColor,
                    ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(45),
              ),
              Text(
                'Let us know what you think',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins_Medium'
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Container(
                width: getProportionateScreenWidth(double.infinity),
                height: getProportionateScreenHeight(216),
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.kAppBarIconColor),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: getProportionateScreenWidth(8.0)),
                  child: TextField(
                    cursorColor: Palette.kAppBarIconColor,
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: 'Write your review here',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xffAFAFAF),
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins_Regular'
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(19),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context)
                      .popUntil(ModalRoute.withName('NavScreen'));
                },
                child: Text(
                  'DONE',
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
    );
  }
}
