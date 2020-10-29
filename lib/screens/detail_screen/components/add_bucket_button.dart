import 'package:covid_store_app/constants/constants.dart';
import 'package:flutter/material.dart';

class AddBucketButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.06,
      child: RaisedButton(
        onPressed: (){},
        color: yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined),
            SizedBox(width: size.width * 0.03,),
            Text('Add to Bucket',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}
