import 'package:covid_store_app/constants/constants.dart';
import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  //It will return the current quantity value
  int quantityValue = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding / 2),
      child: Container(
        width: size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: white.withOpacity(0.2),
        ),
        child: Padding(
          padding: EdgeInsets.all(appPadding / 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.12,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      quantityValue -= 1;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
                child: Text(quantityValue.toString(),style: TextStyle(
                  color: white,fontSize: 22
                ),),
              ),
              Container(
                width: size.width * 0.12,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantityValue += 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
