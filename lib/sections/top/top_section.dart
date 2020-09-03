import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/top/components/logo_and_blur_box.dart';
import 'package:portfolioweb/sections/top/components/menu.dart';
import 'package:portfolioweb/sections/top/components/person_pic.dart';

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
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200.0,
        child: Stack(
          children: [
            LogoAndBlurBox(size: _size),
            Positioned(
              bottom: 20.0,
              right: 0.0,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0.0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
