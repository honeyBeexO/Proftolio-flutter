import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/models/Service.dart';

class ServiceCard extends StatefulWidget {
  final Service service;
  const ServiceCard({this.service});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;
  Duration _duration = Duration(microseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHovered = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: _duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        width: 256.0,
        height: 256.0,
        decoration: BoxDecoration(
          color: this.widget.service.color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (_isHovered) kDefaultCardShadow,
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 120.0,
              height: 120.0,
              duration: _duration,
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (_isHovered)
                    BoxShadow(
                      offset: Offset(0, 20.0),
                      blurRadius: 30.0,
                      color: Colors.black.withOpacity(0.15),
                    ),
                ],
              ),
              child: Image.asset(
                this.widget.service.imageURL,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              this.widget.service.title,
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
