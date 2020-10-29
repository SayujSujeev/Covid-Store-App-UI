import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/data/data.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Wrap(
      spacing: appPadding,
      children: List<Widget>.generate(sizeOfVacc.length, (index) {
        return index == 0
            ? Container(
                width: size.width * 0.2,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    sizeOfVacc[index],
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            : Container(
                width: size.width * 0.2,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    sizeOfVacc[index],
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
      }),
    );
  }
}
