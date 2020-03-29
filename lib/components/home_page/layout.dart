import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/home_page/category_selection.dart';
import 'package:pets_adoption_app/components/shared/searchBox.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/components/home_page/list_data.dart';

class Layout extends StatelessWidget {
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

            SizedBox(height: 10.0,),

            CategorySelection(),

            ListData(),
          ],
        ),
      ),
    );
  }
}