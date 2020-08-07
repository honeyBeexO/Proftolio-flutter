import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class GlassContent extends StatelessWidget {
  final Size size;
  GlassContent({@required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: 1110.0, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi There!',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white)),
              Text(
                'Nouh Amine\nBin Kadi',
                style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.white),
              ),
              Text('Web & Mobile apps dev',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
