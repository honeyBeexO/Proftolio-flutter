import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class ExperienceCard extends StatelessWidget {
  final String experienceYears;
  ExperienceCard({this.experienceYears});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255.0,
      height: 240.0,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Color(0xFFf7e8ff),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFedd2fc),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6.0,
              color: Color(0xffA600FF).withOpacity(0.5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  experienceYears ?? '01',
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                    // foreground: Paint()
                    //   ..style = PaintingStyle.stroke
                    //   ..strokeWidth = 6.0,
                    // //..color = Color(0xffDFA3FF).withOpacity(0.5),
                    color: Color(0xffDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0.0, 5.0),
                        blurRadius: 10.0,
                        color: Color(0xffA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  experienceYears,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              'Years of experience',
              style: TextStyle(
                color: Color(0xffA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
