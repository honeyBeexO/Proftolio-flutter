import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF97B3);
const kSecondaryLightColor = Color(0xFFE4E9F2);
const kSecondaryDarkColor = Color(0xFF404040);
const kAccentLightColor = Color(0xFFB3BFD7);
const kAccentDarkColor = Color(0xFF4E4E4E);
const kBackgroundDarkColor = Color(0xFF3A3A3A);
const kSurfaceDarkColor = Color(0xFF222225);
// Icon Colors
const kAccentIconLightColor = Color(0xFFECEFF5);
const kAccentIconDarkColor = Color(0xFF303030);
const kPrimaryIconLightColor = Color(0xFFECEFF5);
const kPrimaryIconDarkColor = Color(0xFF232323);
// Text Colors
const kBodyTextColorLight = Color(0xFFA1B0CA);
const kBodyTextColorDark = Color(0xFF7C7C7C);
const kTitleTextLightColor = Color(0xFF101112);
const kTitleTextDarkColor = Colors.white;

const kShadowColor = Color(0xFF364564);

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
