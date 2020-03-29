import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/utils/strings.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: hdrBgColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: textColor,
              size: 30,
            ), 
            onPressed: () {}
          ),

          // Location details
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  LOCATION,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFFcccccc)
                  ),
                ),

                // Location
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Text(
                      "Kyiv",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: textColor
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      "Ukraine",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: textColor
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // Profile details
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                
                image: AssetImage(
                  "assets/images/profile.jpg"
                )
              )
            ),
          )
        ],
      ),
    );
  }
}