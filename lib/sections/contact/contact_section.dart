import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/contact/components/contact_box.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffE8F0F9),
        image: DecorationImage(
          image: AssetImage('assets/images/bg_img_2.png'), //
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Wrap(
          children: [
            SizedBox(height: kDefaultPadding * 2.5),
            SectionTitle(
              title: 'Get in touch',
              subTitle: 'For project inquiry and info!',
              color: Color(0xff07e24a),
            ),
            ContactBox(),
          ],
        ),
      ),
    );
  }
}
