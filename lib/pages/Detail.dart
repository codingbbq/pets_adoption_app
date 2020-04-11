import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/details_page/fixed_footer.dart';
import 'package:pets_adoption_app/components/details_page/fixed_header.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/models/cat.dart';
import 'package:pets_adoption_app/utils/common_fn.dart';
import 'package:pets_adoption_app/utils/strings.dart';
class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final Cat args = ModalRoute.of(context).settings.arguments;

    return SafeArea(
          child: Scaffold(
          body: Container(
          decoration: BoxDecoration(
            
          ),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      args.image,
                        width: MediaQuery.of(context).size.width * 0.50,
                      ),
                  ),
          
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey[500],
                          blurRadius: 8.0,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 10.0)
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
                                fontSize: 30.0,
                                color: textColor,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            CommonFn.showGenderIcon(args.gender)
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              args.type,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: secondaryTextColor
                              ),
                            ),
                            Text(
                              '${args.age.toString()} $AGE_LBL',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: secondaryTextColor
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 30.0,
                              color: themeColor,
                            ),
                            Text(
                              args.location,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: secondaryTextColor
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),

                  // About the owner
                  SizedBox(height: 20.0,)
                ],
              ),
              FixedHeader(),
              FixedFooter(),
            ],
          )
        ),
      ),
    );
  }
}