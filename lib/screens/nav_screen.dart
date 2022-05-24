import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/screens/categories_screen.dart';
import 'package:fresh_fruits/screens/deals_screen.dart';
import 'package:fresh_fruits/screens/favorite_screen.dart';
import 'package:fresh_fruits/screens/home_page_screen.dart';
import 'package:fresh_fruits/screens/profile_screen.dart';
import 'package:fresh_fruits/size.config.dart';

class NavScreen extends StatefulWidget {

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  int _selected = 0;
  PageController _pageController = PageController();

  void _onTap(int index){
    setState(() {
      _selected = index;
    });
    _pageController.animateToPage(_selected,
        duration: Duration(milliseconds: 1), curve: Curves.fastOutSlowIn);
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            _selected = index;
          });
        },
        children: [
          HomePageScreen(
            categoryOnPressed: (){
              _pageController.animateToPage(1, duration: Duration(microseconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
            trendingOnPressed: (){
              _pageController.animateToPage(2, duration: Duration(microseconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
          ),
          CategoriesScreen(
            onPressed: (){
              _pageController.previousPage(duration: Duration(microseconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
          ),
          DealsScreen(
            onPressed: (){
              _pageController.animateToPage(0, duration: Duration(microseconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn);
            },
          ),
          FavoriteScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(83),
        child: Padding(
          padding: EdgeInsets.only(top: 6.0),
          child: BottomNavigationBar(
            iconSize: 28,
            selectedLabelStyle: TextStyle(
              fontSize: 0
            ),
            unselectedLabelStyle:  TextStyle(
                fontSize: 0
            ),
            elevation: 0,
            currentIndex: _selected,
            selectedItemColor: Palette.kAppBarIconColor,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                label: '',
                  icon:  Icon(
                    Icons.home
                  )
              ),
              BottomNavigationBarItem(
                label: '',
                  icon:  Icon(
                    Icons.swap_horiz,
                  )
              ),
              BottomNavigationBarItem(
                label: '',
                  icon:  Icon(
                    Icons.shopping_cart,
                  )
              ),
              BottomNavigationBarItem(
                label: '',
                  icon:  Icon(
                    Icons.favorite,
                  )
              ),
              BottomNavigationBarItem(
                label: '',
                  icon:  Icon(
                    Icons.person,
                  )
              )
            ],
            onTap: _onTap,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

