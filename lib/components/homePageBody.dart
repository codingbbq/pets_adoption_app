import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/searchBox.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bodyBgColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SearchBox(),
          ],
        ),
      ),
    );
  }
}