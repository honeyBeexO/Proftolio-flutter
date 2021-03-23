import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/testemonials.dart';
import 'package:portfolioweb/sections/feedback/components/testemonial_card.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';

class TestemonialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110.0),
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      child: Column(
        children: [
          SectionTitle(
            title: 'Feedback Recieved',
            subTitle: 'Client\'s testemonial that really inspired me',
            color: Color(0xff00b1ff),
          ),
          SizedBox(height: kDefaultPadding),
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            children: List.generate(
              testemonilas.length,
              (index) => TestemonialCard(
                testemonial: testemonilas[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
