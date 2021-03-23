import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final String imageURL;
  final Function onTap;
  DefaultButton({this.onTap, this.imageURL, this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onTap,
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 25.0,
      ),
      color: Color(0xFFE8F0F9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        children: [
          Image.asset(
            this.imageURL != null ? imageURL : 'images/download.png',
            height: 40.0,
          ),
          SizedBox(width: kDefaultPadding),
          Text(this.text ?? ''),
        ],
      ),
    );
  }
}
