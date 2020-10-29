import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/data/data.dart';
import 'package:covid_store_app/models/sanitization_product.dart';
import 'package:flutter/material.dart';

class SanitizationProducts extends StatelessWidget {
  Widget _buildSanitizationProducts(BuildContext context, int index) {
    Sanitization sanitization = sanitizationProducts[index];
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appPadding / 1.5),
      child: Container(
        width: size.width * 0.4,
        decoration: BoxDecoration(
          color: white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              sanitization.name,
              style: TextStyle(
                color: white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Image(
              height: size.height * 0.15,
              width: size.width * 0.32,
              fit: BoxFit.contain,
              image: AssetImage(sanitization.imageUrl),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appPadding, vertical: appPadding / 1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sanitization',
                style: TextStyle(color: white.withOpacity(0.6), fontSize: 18),
              ),
              Text(
                'All',
                style: TextStyle(color: white.withOpacity(0.6), fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          height: size.height * 0.2,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: sanitizationProducts.length,
              itemBuilder: (context, index) {
                return _buildSanitizationProducts(context, index);
              }),
        )
      ],
    );
  }
}
