import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/utils/strings.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            size: 30.0,
            color: iconColor,
          ),
          border: InputBorder.none,
          hintText: SEARCH,
          hintStyle: TextStyle(
            color: secondaryTextColor,
            fontSize: 18.0
          )
        ),
      ),
    );
  }
}