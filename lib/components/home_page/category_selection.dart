import 'package:flutter/material.dart';
import 'package:pets_adoption_app/models/category_model.dart';

class CategorySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: categories.map((category) => Category()).toList()
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
      child: Text("Text"),
    );
  }
}