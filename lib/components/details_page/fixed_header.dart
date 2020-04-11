import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class FixedHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 50,
            onPressed: (){
              Navigator.pop(context);
            },
            color: iconColor,
          ),

          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 50,
            onPressed: (){},
            color: iconColor,
          ),
        ],
      ),
    );
  }
}