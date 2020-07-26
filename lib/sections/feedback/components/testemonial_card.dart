import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/testemonials.dart';

class TestemonialCard extends StatefulWidget {
  final Testemonial testemonial;
  const TestemonialCard({
    Key key,
    this.testemonial,
  }) : super(key: key);

  @override
  _TestemonialCardState createState() => _TestemonialCardState();
}

class _TestemonialCardState extends State<TestemonialCard> {
  Duration _duration = Duration(microseconds: 200);
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      onTap: () {},
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: _duration,
        height: 350.0,
        width: 340.0,
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        decoration: BoxDecoration(
          color: this.widget.testemonial.color.withOpacity(0.75),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (_isHovered) kDefaultCardShadow,
          ],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0.0, -40.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10.0),
                  image: DecorationImage(
                    image: AssetImage(this.widget.testemonial.userPicURL),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(
              this.widget.testemonial.review,
              style: TextStyle(
                color: kTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                height: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              this.widget.testemonial.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
