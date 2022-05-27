import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/size.config.dart';

import 'nav_screen.dart';


class CategoriesScreen extends StatelessWidget {

  CategoriesScreen ({required this.onPressed});
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: getProportionateScreenHeight(28)),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_back,
              color: Colors.black,
              size: 30,)
          ),
        ),
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins_SemiBold'
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(36)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    image: 'images/fruits.png',
                    title: 'Fruits',
                    text: '87 Items',
                  ),
                  CategoryCard(
                    image: 'images/vegetables.png',
                    title: 'Vegetables',
                    text: '53 Items',
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    image: 'images/mushroom.png',
                    title: 'Mushroom',
                    text: '56 Items',
                  ),
                  CategoryCard(
                    image: 'images/diary.png',
                    title: 'Diary',
                    text: '45 Items',
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    image: 'images/oats.png',
                    title: 'Oats',
                    text: '98 Items',
                  ),
                  CategoryCard(
                    image: 'images/bread.png',
                    title: 'Bread',
                    text: '133 Items',
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    image: 'images/rice.png',
                    title: 'Rice',
                    text: '66 Items',
                  ),
                  CategoryCard(
                    image: 'images/egg.png',
                    title: 'Egg',
                    text: '120 Items',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {

  CategoryCard({required this.image, required this.title, required this.text});
  String image, title, text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(139),
      height: getProportionateScreenHeight(139),
      child: Expanded(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
              vertical: getProportionateScreenWidth(8)
            ),
            child: Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset('$image'),
                      Text(
                        title,
                        style: TextStyle(
                          color: Palette.kAppBarIconColor,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins_Medium'
                        ),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: Palette.kAppBarIconColor,
                            fontSize: getProportionateScreenWidth(9),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins_Medium'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
