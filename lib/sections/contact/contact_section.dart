import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/service/components/section_title.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600.0,
      decoration: BoxDecoration(
        color: Color(0xffE8F0F9),
        image: DecorationImage(
          image: AssetImage('images/bg_img_2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: 'Get in touch',
            subTitle: 'For project inquiry and info!',
            color: Color(0xff07e24a),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110.0),
      padding: EdgeInsets.all(kDefaultPadding * 2.5),
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                text: 'nouhben',
                imageURL: 'images/skype.png',
                color: Color(0xffD9FFFC),
              ),
              SocialCard(
                text: 'nouhben',
                imageURL: 'images/whatsapp.png',
                color: Color(0xffE4FFC7),
              ),
              SocialCard(
                text: 'nouhben',
                imageURL: 'images/messanger.png',
                color: Color(0xffE8F0F9),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialCard extends StatefulWidget {
  final String text;
  final String imageURL;
  final Color color;
  const SocialCard({
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
      child: AnimatedContainer(
        duration: _duration,
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2,
          horizontal: kDefaultPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: this.widget.color, //Color(0xffD9FFFC),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              this.widget.imageURL ?? 'images/email.png',
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(width: kDefaultPadding),
            Text(this.widget.text ?? 'nouhben/')
          ],
        ),
      ),
    );
  }
}
