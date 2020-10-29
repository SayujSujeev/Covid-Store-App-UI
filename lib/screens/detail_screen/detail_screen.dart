import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/models/product.dart';
import 'package:covid_store_app/screens/detail_screen/components/add_bucket_button.dart';
import 'package:covid_store_app/screens/detail_screen/components/product_details.dart';
import 'package:covid_store_app/screens/detail_screen/components/product_image.dart';
import 'package:covid_store_app/screens/detail_screen/components/quantity_selector.dart';
import 'package:covid_store_app/screens/detail_screen/components/size_selector.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //it contain product image and background container
            ProductImage(
               widget.product.imageUrl,
               widget.product.isFav,
            ),
            ProductDetails(
              widget.product,
            ),
            SizeSelector(),
            QuantitySelector(),
            AddBucketButton(),
          ],
        ),
      ),
    );
  }
}
