import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {

  final Product product;

  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text('${product.name}',style: TextStyle(
          color: white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text('by ${product.manufacture}',style: TextStyle(
          color: white.withOpacity(0.4),
          fontSize: 16,
        ),),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text('${product.description}',
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
          color: white.withOpacity(0.7),
          fontSize: 14,
            height: 1.5
        ),),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width * 0.25,
              height: 1,
              color: white.withOpacity(0.4),
            ),
            Text('\$${product.price.toStringAsFixed(2)}',style: TextStyle(
              color: yellow,
              fontSize: 28,
            ),),
            Container(
              width: size.width * 0.25,
              height: 1,
              color: white.withOpacity(0.4),
            ),
          ],
        )
      ],
    );
  }
}

