import 'package:flutter/material.dart';
import 'package:portfolioweb/sections/top/components/glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Image.asset('images/logo.png'),
        Image.network('https://img.icons8.com/dusk/64/000000/beta.png'),
        Spacer(),
        GlassContent(size: _size),
        Spacer(flex: 3),
      ],
    );
  }
}
