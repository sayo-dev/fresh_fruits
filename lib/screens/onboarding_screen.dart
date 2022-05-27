import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants.dart';
import 'package:fresh_fruits/size.config.dart';
import 'package:fresh_fruits/slider_content.dart';

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _selectedSlider = 0;
  PageController _pageController = PageController();

  List<Map<String, String>> sliders = [
    {
      "image": "images/onboard_image3.svg",
      "title": "Welcome to Fresh Fruits",
      "sub_title": "Grocery application",
      "text": "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor "
    },
    {
      "image": "images/Group 438.svg",
      "title": "We provide best quality",
      "sub_title": " Fruits to your family",
      "text": "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed ."
    },
    {
      "image": "images/onboard_image1.svg",
      "title": "Fast and responsibly",
      "sub_title": "delivery by our courir ",
      "text": "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor ",

    }

  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: _selectedSlider == 1 ? IconButton(
          onPressed: (){
            setState(() {
              _pageController.previousPage(duration: Duration(milliseconds: 2), curve: Curves.easeOut);
            });
          },
          icon: Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
            child: Icon(
                Icons.arrow_back,
              size: 42,
              color: Palette.kAppBarIconColor,
            ),
          ),
        ) : null,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  _selectedSlider = index;
                });
              },
              controller: _pageController,
              itemCount: sliders.length,
              itemBuilder: (context, index) =>
                  SliderContent(
                  image: sliders[index]['image'] as String,
                  title: sliders[index]['title'] as String,
                    sub_title:  sliders[index]['sub_title'] as String,
                    text:  sliders[index]['text'] as String,
                  ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      sliders.length, (index) => buildSliderNav(index: index)),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20.0), horizontal: getProportionateScreenWidth(20.0)),
                  child: _selectedSlider <= 1 ? Column(
                    children: [
                      SizedBox(height: getProportionateScreenHeight(35),),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _pageController.nextPage(duration: Duration(milliseconds: 20), curve: Curves.easeInCirc);
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
                      ),
                    ],
                  ) : Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, 'CreateAccountScreen');
                        },
                        child: Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                              color: Colors.white,
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
                            primary: Colors.black,
                            minimumSize: Size(double.infinity, getProportionateScreenHeight(50.0))
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10.0),),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, 'LoginScreen');
                        },
                        child: Text(
                          'LOGIN',
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
                              side: BorderSide(
                                color: Colors.black
                              )
                            ),
                            primary: Colors.white,
                            minimumSize: Size(double.infinity, getProportionateScreenHeight(50.0))
                        ),
                      ),
                    ],
                  ),

                )
              ],
            ),
          ),

        ],
      ),
    );

  }

  AnimatedContainer buildSliderNav({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: 22,
      decoration: BoxDecoration(
          color: _selectedSlider == index ? Palette.kPageControllerColor : Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}



