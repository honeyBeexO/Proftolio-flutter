import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/Service.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';
import 'package:portfolioweb/sections/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110.0),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: 'Service Offerings',
            subTitle: 'My strength arenas',
          ),
          Wrap(
            spacing: kDefaultPadding / 2,
            runSpacing: kDefaultPadding / 2,
            alignment: WrapAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) => ServiceCard(
                service: services[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
