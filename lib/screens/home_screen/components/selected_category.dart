import 'package:covid_store_app/constants/constants.dart';
import 'package:covid_store_app/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {

  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index){

    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 2),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: appPadding / 1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: selectedCategoryIndex == index ?
                white : white.withOpacity(0.2),
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                fontWeight: selectedCategoryIndex == index ? FontWeight.bold : FontWeight.normal,
                color: selectedCategoryIndex == index ? black : white.withOpacity(0.4)
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: appPadding,right: appPadding / 3),
            itemCount: categoryList.length,
            itemBuilder: (context,index){
            return _buildCategory(context,index);
            }
        ),
      ),
    );
  }
}
