import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class MyOutlineButton extends StatelessWidget {
  final String imageURL;
  final String text;
  final Function onPress;
  const MyOutlineButton({this.imageURL, this.onPress, this.text});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        onPressed: this.onPress,
        // color: Color(0xffDFA3FF).withOpacity(0.9),
        // focusColor: Color(0xffDFA3FF).withOpacity(0.9),
        // disabledBorderColor: Colors.black.withOpacity(0.9),
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        borderSide: BorderSide(
          color: Color(0xffDFA3FF).withOpacity(0.45), //Color(0xffEDEDED),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          children: [
            Image.asset(this.imageURL, height: 40.0),
            SizedBox(width: kDefaultPadding),
            Text(this.text),
          ],
        ),
      ),
    );
  }
}
