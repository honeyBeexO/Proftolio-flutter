import 'package:flutter/material.dart';

const Color kTextColor = Color(0xff707070);
const Color kTextLightColor = Color(0xff555555);

const double kDefaultPadding = 20.0;

final BoxShadow kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50.0,
  color: Color(0xFF0700B1).withOpacity(0.15),
);
final BoxShadow kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50.0,
  color: Colors.black.withOpacity(0.1),
);

/* TEXT FIELD THEME */
final InputDecorationTheme kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);
final OutlineInputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
    color: Color(0xffFEE4FD),
  ),
);
