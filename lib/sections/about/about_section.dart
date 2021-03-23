import 'package:flutter/material.dart';
import 'package:portfolioweb/components/default_button.dart';
import 'package:portfolioweb/components/my_outline_button.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/about/components/about_section_text.dart';
import 'package:portfolioweb/sections/about/components/about_text.dart';
import 'package:portfolioweb/sections/about/components/experience_card.dart';
import 'package:portfolioweb/size_config.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 320.0,
                child: AboutTextWithSign(),
              ),
              Container(
                width: 350.0,
                child: ExperienceCard(experienceYears: '01'),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: 350.0,
                color: Colors.yellow,
                child: AboutSectionText(
                  text:
                      "lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book",
                ),
              ),
              Container(
                width: 350.0,
                color: Colors.red,
                child: AboutSectionText(
                  text:
                      "lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                text: 'Hire Me!',
                imageURL: 'assets/images/hand.png',
                onPress: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                text: 'Download CV!',
                imageURL: 'assets/images/download.png',
                onTap: () {
                  print('Getting hired...');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
