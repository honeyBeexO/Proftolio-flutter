import 'package:flutter/material.dart';
import 'package:portfolioweb/components/default_button.dart';
import 'package:portfolioweb/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'images/email.png',
            width: 80.0,
            height: 80.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80.0,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Starting a new project?',
                  style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  'Get an estimate for the project',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          DefaultButton(
            text: 'Hire Me!',
            imageURL: 'images/hand.png',
            onTap: () {
              print('hire me from new project recent work!...');
            },
          ),
        ],
      ),
    );
  }
}
