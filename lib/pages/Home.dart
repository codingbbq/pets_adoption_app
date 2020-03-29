import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/header.dart';
import 'package:pets_adoption_app/components/homePageBody.dart';
import 'package:pets_adoption_app/utils/colors.dart';
  
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: Column(
              children: <Widget>[
                Header(),
                SizedBox(height: 10.0,),
                HomePageBody()
              ],
            ),
          ),
      ),
    );
  }
}