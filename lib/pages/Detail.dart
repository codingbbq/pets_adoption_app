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
            bottomSheet: FixedFooter(),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
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
                        SizedBox(height: 20.0,),

                        Container(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 150.0),
                          child: Column(
                            children: <Widget>[
                              // Owner image, name and information
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Owner profile
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
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            args.owner,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: textColor
                                            ),
                                          ),

                                          SizedBox(
                                            height: 5.0,
                                          ),

                                          Text(
                                            OWNER,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: secondaryTextColor
                                            ),

                                          )
                                        ],
                                      )
                                    ],
                                  ),

                                  Text(
                                    args.postdate,
                                    style: TextStyle(
                                      color: secondaryTextColor,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: 20.0,),

                              Text(
                                args.summary,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: secondaryTextColor
                                ),
                              ),


                            ],
                          )
                        ),
                        
                      ],
                    ),
                    FixedHeader(),
                  ],
                )
            ),
          ),
      ),
    );
  }
}