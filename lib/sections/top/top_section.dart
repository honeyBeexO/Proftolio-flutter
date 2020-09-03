import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/top/components/logo_and_blur_box.dart';
import 'package:portfolioweb/sections/top/components/menu.dart';
import 'package:portfolioweb/sections/top/components/person_pic.dart';
import 'package:portfolioweb/size_config.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900.0, minHeight: 600.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff69A2B5),
        image: DecorationImage(
          image: AssetImage('assets/images/lime-483.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: getProportionateScreenWidth(1000.0),
        child: Stack(
          children: [
            LogoAndBlurBox(size: _size),
            SizeConfig.screenWidth > 600
                ? Positioned(
                    bottom: 80.0,
                    right: 0.0,
                    child: PersonPic(),
                  )
                : SizedBox(width: 2),
            SizeConfig.screenWidth > 600
                ? Positioned(
                    right: 0.0,
                    left: 0.0,
                    bottom: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Menu(),
                    ),
                  )
                : SizedBox(width: 2),
          ],
        ),
      ),
    );
  }
}
