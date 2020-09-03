import 'package:flutter/material.dart';

class Service {
  final String title;
  final String imageURL;
  final int id;
  final Color color;
  Service({
    this.id,
    this.title,
    this.color,
    this.imageURL,
  });
}

List<Service> services = [
  Service(
      id: 1,
      title: 'Mobile Apps',
      color: Color(0xffD9FFFC),
      imageURL: 'assets/images/graphic.png'),
  Service(
      id: 2,
      title: 'Web Apps',
      color: Color(0xffFFE4C7),
      imageURL: 'images/desktop.png'),
  Service(
      id: 3,
      title: 'UI Design',
      color: Color(0xffFFF3DD),
      imageURL: 'assets/images/ui.png'),
  Service(
      id: 4,
      title: 'Other Stuff',
      color: Color(0xffFFE0E0),
      imageURL: 'assets/images/graphic.png'),
];
