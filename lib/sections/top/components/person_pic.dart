import 'package:flutter/material.dart';
import 'package:portfolioweb/size_config.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: SizeConfig.screenWidth > 720
          ? BoxConstraints(maxWidth: 539.0, maxHeight: 760.0)
          : BoxConstraints(maxWidth: 239.0, maxHeight: 560.0),
      child: Image.asset(
        'images/person.png',
        scale: 2.0,
      ),
    );
  }
}
