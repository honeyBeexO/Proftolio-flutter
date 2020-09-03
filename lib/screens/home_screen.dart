import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/about/about_section.dart';
import 'package:portfolioweb/sections/contact/contact_section.dart';
import 'package:portfolioweb/sections/feedback/testemonial_section.dart';
import 'package:portfolioweb/sections/recent_work/recent_work_section.dart';
import 'package:portfolioweb/sections/service/service_section.dart';
import 'package:portfolioweb/sections/top/top_section.dart';
import 'package:portfolioweb/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TopSection(),
            // SizedBox(height: kDefaultPadding * 2),
            // AboutSection(),
            // ServiceSection(),
            // RecentWorkSection(),
            // SizedBox(height: kDefaultPadding * 2),
            // TestemonialSection(),
            // SizedBox(height: kDefaultPadding * 2),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
