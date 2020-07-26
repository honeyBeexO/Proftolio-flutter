import 'package:flutter/material.dart';
import 'package:portfolioweb/components/my_outline_button.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/about/components/about_section_text.dart';
import 'package:portfolioweb/sections/about/components/about_text.dart';
import 'package:portfolioweb/sections/about/components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book",
                ),
              ),
              ExperienceCard(experienceYears: '01'),
              Expanded(
                child: AboutSectionText(
                  text:
                      "lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          MyOutlineButton(
            text: 'Hire Me!',
            imageURL: 'images/hand.png',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
