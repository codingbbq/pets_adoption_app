import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/home_page/header.dart';
import 'package:pets_adoption_app/components/home_page/layout.dart';
import 'package:pets_adoption_app/utils/colors.dart';
  
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Header(),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0,),
                        Layout()
                      ],
                    ),
                  ),
                )
                
              ],
            ),
          ),
      ),
    );
  }
}