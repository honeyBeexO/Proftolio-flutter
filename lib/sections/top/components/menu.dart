import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/size_config.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  int _hoveredIndex = 0;
  List<String> _menuItems = [
    'About',
    'Projects',
    'Services',
    'Testemonials',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: SizeConfig.screenWidth),
      height: 100.0,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          boxShadow: [
            kDefaultShadow,
          ]),
      child: Wrap(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.spaceAround,
        children: List.generate(
          _menuItems.length,
          (index) => _buildMenuItem(index),
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? _hoveredIndex = index : _hoveredIndex = _selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122.0),
          height: 100.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                _menuItems[index],
                style: TextStyle(fontSize: 20.0, color: kTextColor),
              ),
              //HOVER
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                bottom: _selectedIndex != index && _hoveredIndex == index
                    ? -20.0
                    : -32.0,
                left: 0.0,
                right: 0.0,
                child: Image.asset('assets/images/hover.png'),
              ),
              //CLICK
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                bottom: _selectedIndex == index ? -2.0 : -32.0,
                left: 0.0,
                right: 0.0,
                child: Image.asset('assets/images/hover.png'),
              ),
            ],
          ),
        ),
      );
}
