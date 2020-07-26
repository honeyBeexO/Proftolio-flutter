import 'package:flutter/cupertino.dart';

class Feedback {
  final String name;
  final String review;
  final String userPicURL;
  final int id;
  final Color color;
  Feedback({this.color, this.review, this.id, this.name, this.userPicURL});
}

List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    color: Color(0xffFFF3DD),
    userPicURL: 'images/feedbackUser.png',
    review: _review,
  ),
  Feedback(
    id: 2,
    color: Color(0xffD9FFFC),
    userPicURL: 'images/feedbackUser.png',
    review: _review,
  ),
  Feedback(
    id: 3,
    color: Color(0xffFFE0E0),
    userPicURL: 'images/feedbackUser.png',
    review: _review,
  ),
];
String _review = 'Great work ethics, and great support, since the first meeting he made everything fluent';
