import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    List<Color> color = [Colors.red, Colors.red[900], Colors.white];
    List<double> stops = [0.0, MediaQuery.of(context).size.height * 0.50, 1];

    return SafeArea(
          child: Scaffold(
          body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: color,
              stops: stops
            )
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 50,
                    onPressed: (){},
                    color: iconColor,
                  ),

                  Placeholder(
                    fallbackHeight: 300,
                    fallbackWidth: 200,
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    iconSize: 50,
                    onPressed: (){},
                    color: iconColor,
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}