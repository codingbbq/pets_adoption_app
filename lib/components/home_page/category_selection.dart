import 'package:flutter/material.dart';
import 'package:pets_adoption_app/models/category_model.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class CategorySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) => Category(name : category.name)).toList()
        )
      )
    );
  }
}

class Category extends StatelessWidget {

  final String name;

  const Category({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          // Container widget to show the icon
          Container(
            width: 75,
            height: 75,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey[200],
                  offset: Offset(0.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 3.0
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                style: BorderStyle.none
              )
            ),
          ),

          SizedBox(height: 5.0,),

          // Show the Category text
          Text(
            name,
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      )
    );
  }
}