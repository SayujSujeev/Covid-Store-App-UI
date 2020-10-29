import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/screens/home_screen/components/custom_nav_bar.dart';
import 'package:covid_store_app/screens/home_screen/components/products.dart';
import 'package:covid_store_app/screens/home_screen/components/sanitization_products.dart';
import 'package:covid_store_app/screens/home_screen/components/selected_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Home',style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),),
        leading: Container(
          margin: EdgeInsets.only(left: appPadding),
          width: size.width * 0.1,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/appbar_icon.png')
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: appPadding),
            width: size.width * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/propic.jpg')
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            //will help to give scroll view to small sized screens
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SelectCategory(),
                  Products(),
                  SanitizationProducts(),
                ],
              ),
            ),
            CustomNavBar(),


            //thats the end of first lets jump to second screen
          ],
        ),
      ),
    );
  }
}
