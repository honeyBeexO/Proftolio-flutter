import 'package:flutter/cupertino.dart';

class Testemonial {
  final String name;
  final String review;
  final String userPicURL;
  final int id;
  final Color color;
  Testemonial({this.color, this.review, this.id, this.name, this.userPicURL});
}

List<Testemonial> testemonilas = [
  Testemonial(
    id: 1,
    color: Color(0xffFFF3DD),
    userPicURL: 'images/people.png',
    review: _review,
    name: 'Jhon Doe',
  ),
  Testemonial(
    id: 2,
    color: Color(0xffD9FFFC),
    userPicURL: 'images/people.png',
    review: _review,
    name: 'Jhon Doe',
  ),
  Testemonial(
    id: 3,
    color: Color(0xffFFE0E0),
    userPicURL: 'images/people.png',
    review: _review,
    name: 'Jhon Doe',
  ),
];
String _review =
    'Great work ethics, and great support, since the first meeting he made everything fluent Great work ethics, and great support, since the first meeting he made everything fluent';
