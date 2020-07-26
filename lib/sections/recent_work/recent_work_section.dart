import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/recent_work.dart';
import 'package:portfolioweb/sections/recent_work/components/hire_me_card.dart';
import 'package:portfolioweb/sections/recent_work/components/recent_work_card.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          SizedBox(
            width: 1110.0,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                  recentWork: recentWorks[index],
                  onTap: () {
                    print(
                        'Show Detail page of the project: ${recentWorks[index].title}');
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
