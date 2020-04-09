import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/models/cat.dart';
import 'package:pets_adoption_app/utils/common_fn.dart';
class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final Cat args = ModalRoute.of(context).settings.arguments;

    return SafeArea(
          child: Scaffold(
          body: Container(
          decoration: BoxDecoration(
            
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
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    color: iconColor,
                  ),

                  Image.asset(
                    args.image,
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    iconSize: 50,
                    onPressed: (){},
                    color: iconColor,
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.red
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey[200],
                      blurRadius: 20.0,
                      spreadRadius: 10.0,
                      offset: Offset(0.0, 0.2)
                    )
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          args.name,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: textColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        CommonFn.showGenderIcon(args.gender)
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}