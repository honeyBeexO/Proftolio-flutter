import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  final RecentWork recentWork;
  final Function onTap;
  const RecentWorkCard({
    this.recentWork,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool _isHovered = false;
  Duration _duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      hoverColor: Colors.transparent,
      onTap: this.widget.onTap,
      child: AnimatedContainer(
        duration: _duration,
        width: 540.0,
        height: 320.0,
        margin: EdgeInsets.only(top: kDefaultPadding * 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (_isHovered) kDefaultCardShadow,
          ],
        ),
        child: Row(
          children: [
            Image.asset(widget.recentWork.imageURL),
            SizedBox(width: kDefaultPadding / 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.recentWork.category.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[0].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(height: 1.5),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    'View Details',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: _isHovered ? Colors.blue : kTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
