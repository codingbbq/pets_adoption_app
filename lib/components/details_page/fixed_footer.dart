import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class FixedFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: bodyBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: (){
              print("Heart was clicked");
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  )
                ]
              ),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),

          InkWell(
            onTap: (){
              print("Heart was clicked");
            },
            child: Container(
              padding: const EdgeInsets.only(left: 60, right: 60),
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "Adoption",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1
                  ),
                ),
              )
            ),
          ),

        ],
      )
    );
  }
}