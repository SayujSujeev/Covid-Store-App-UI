import 'package:covid_store_app/constants/constants.dart';
import 'package:flutter/material.dart';

class NavBarIcon extends StatefulWidget {
  final IconData icon;
  final bool isSelected;
  final Function onPressed;

  const NavBarIcon({Key key, this.icon, this.isSelected, this.onPressed})
      : super(key: key);

  @override
  _NavBarIconState createState() => _NavBarIconState();
}

class _NavBarIconState extends State<NavBarIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.onPressed,
      child: widget.isSelected == true
          ? Container(
              width: size.width * 0.13,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                color: yellow,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(
                widget.icon,
                color: black,
                size: 30,
              ),
            )
          : Container(
              width: size.width * 0.13,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                color: white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(
                widget.icon,
                color: white,
                size: 30,
              ),
            ),
    );
  }
}
