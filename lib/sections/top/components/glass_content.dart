import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/size_config.dart';

class GlassContent extends StatelessWidget {
  final Size size;
  GlassContent({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            constraints: BoxConstraints(
                maxWidth: 1110.0, maxHeight: SizeConfig.screenHeight * 0.85),
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
                  'I am Nouh',
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: kDefaultPadding * 3),
                Wrap(
                  spacing: kDefaultPadding * 2,
                  runSpacing: kDefaultPadding * 1.5,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SizedBox(
                      width: 400.0,
                      child: Chip(
                        //padding: EdgeInsets.all(10),
                        elevation: 10.0,
                        shadowColor: kShadowColor,
                        padding: const EdgeInsets.all(10),
                        labelPadding: const EdgeInsets.all(10),
                        backgroundColor: kAccentLightColor.withOpacity(0.2),
                        label: Text(
                          'Web Devloper',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        avatar: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 100.0,
                          child: Image.asset(
                            'assets/icons/api.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400.0,
                      child: Chip(
                        padding: EdgeInsets.all(10),
                        elevation: 10.0,
                        shadowColor: kShadowColor,
                        //padding: const EdgeInsets.all(10),
                        labelPadding: const EdgeInsets.all(10),
                        backgroundColor: Colors.purple.withOpacity(0.12),
                        label: Text(
                          'Mobile Apps Dev',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        avatar: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 100.0,
                          child: Image.asset(
                            'assets/icons/phone.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
