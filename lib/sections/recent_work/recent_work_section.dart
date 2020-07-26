import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolioweb/components/default_button.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/recent_work/components/hire_me_card.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //TODO: LEave it later just for demo
      height: 600.0,
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      decoration: BoxDecoration(
        color: Color(0xffF7E8FF).withOpacity(0.45),
        image: DecorationImage(
          image: AssetImage('images/recent_work_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0.0, -80.0),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: 'Recent works',
            subTitle: 'My Strong Arenas',
            color: Color(0xffFFB100),
          ),
        ],
      ),
    );
  }
}
