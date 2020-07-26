import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class AboutSectionText extends StatelessWidget {
  final String text;
  AboutSectionText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        this.text,
        style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.w200,
          height: 2.0,
        ),
      ),
    );
  }
}
