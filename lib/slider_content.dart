import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class SliderContent extends StatelessWidget {
  const SliderContent(
      {Key? key, required this.image, required this.text, required this.title, required this.sub_title})
      : super(key: key);

  final String image, text, title, sub_title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        SvgPicture.asset(image),
        Spacer(),
        Text(
          title,
          style: Palette.kOnBoardingTitleStyle,
        ),
        SizedBox(height: 15),
        Text(
          sub_title,
          style: Palette.kOnBoardingSubtitleStyle,
        ),
        SizedBox(height: 18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Text(
            text,
            style: Palette.kOnBoardingTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
