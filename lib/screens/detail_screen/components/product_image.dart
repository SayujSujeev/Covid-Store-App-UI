import 'package:covid_store_app/constants/constants.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  final String image;
  bool isFav;

  ProductImage(this.image, this.isFav);

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: size.height * 0.3,
          width: size.width,
          margin: EdgeInsets.only(bottom: size.height * 0.1),
          decoration: BoxDecoration(
              color: white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: white.withOpacity(0.4),
                  ),
                  onPressed: () => Navigator.of(context).pop()),
              IconButton(
                  icon: widget.isFav
                      ? Icon(
                          Icons.favorite,
                          color: red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: white.withOpacity(0.4),
                        ),
                  onPressed: () {
                    setState(() {
                      widget.isFav = !widget.isFav;
                    });
                  }),
            ],
          ),
        ),
        Image.asset(
          widget.image,
          height: size.height * 0.35,
          fit: BoxFit.fitHeight,
        )
      ],
    );
  }
}
