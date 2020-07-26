import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color color;
  const SectionTitle({this.title, this.subTitle, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 72.0),
            margin: EdgeInsets.only(right: kDefaultPadding),
            color: Colors.black,
            height: 100.0,
            width: 8.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: this.color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                this.subTitle,
                style:
                    TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
              ),
              Text(
                this.title,
                style: Theme.of(context).textTheme.headline2.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
