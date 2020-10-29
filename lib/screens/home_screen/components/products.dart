import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/data/data.dart';
import 'package:covid_store_app/models/product.dart';
import 'package:covid_store_app/screens/detail_screen/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Products extends StatelessWidget {
  Widget _buildProducts(BuildContext context, int index) {
    Product product = products[index];
    Size size = MediaQuery
        .of(context)
        .size;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (_) => DetailScreen(product: product),),);
      },
      child: Padding(
        padding: EdgeInsets.all(appPadding),
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: size.height * 0.32,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.only(
                    left: appPadding / 1.5,
                    right: appPadding / 1.5,
                    bottom: appPadding / 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${product.name}',
                      style: TextStyle(
                        color: white,
                        letterSpacing: 1,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      '${product.manufacture}',
                      style: TextStyle(
                        color: white.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: yellow,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.09,
                          child: RaisedButton(
                            color: yellow,
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: black,
                              size: 20,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: size.height * 0.14),
                child: Image.asset(product.imageUrl),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Container(
      height: size.height * 0.42,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return _buildProducts(context, index);
          }),
    );
  }
}
