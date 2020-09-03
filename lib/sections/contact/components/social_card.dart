import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/size_config.dart';

class SocialCard extends StatefulWidget {
  final String text;
  final String imageURL;
  final Color color;
  final Function onPress;
  const SocialCard({
    this.onPress,
    this.color,
    this.imageURL,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  Duration _duration = Duration(microseconds: 200);
  bool _isHovered = false;
  //1- Animated container
  //2- Inkwell
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.onPress,
        onHover: (value) {
          setState(() {
            _isHovered = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: _duration,
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: this.widget.color, //Color(0xffD9FFFC),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              if (_isHovered) kDefaultCardShadow,
            ],
          ),
          child: Row(
            children: [
              Image.network(
                widget.imageURL,
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(30),
              ),
              // Image.asset(
              //   this.widget.imageURL ?? 'assets/images/email.png',
              //   width: 80.0,
              //   height: 80.0,
              // ),
              // SvgPicture.asset(
              //   this.widget.imageURL,
              //   width: 80.0,
              //   height: 80.0,
              // ),
              SizedBox(width: kDefaultPadding),
              Text(this.widget.text ?? 'nouhben/')
            ],
          ),
        ),
      ),
    );
  }
}
