import 'package:flutter/material.dart';
import 'package:pets_adoption_app/models/cat.dart';
import 'package:pets_adoption_app/services/category_service.dart';
import 'package:pets_adoption_app/utils/colors.dart';
import 'package:pets_adoption_app/utils/common_fn.dart';

class ListData extends StatelessWidget {

  final CategoryService categoryService = CategoryService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: categoryService.fetchData(),
      builder: (BuildContext context, AsyncSnapshot<List<Cat>> snapshot){
        if(snapshot.hasData){
          List<Cat> catData = snapshot.data;

          return Column(
            children: catData.map((cat) => 
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                    context, 
                    '/detail',
                    arguments: cat
                  );
                }, 
                child: CatCard(cat: cat)
              )).toList()
          );

        }

        return CircularProgressIndicator();
      },
    );
  }
}

class CatCard extends StatelessWidget {
  final Cat cat;
  CatCard({
    this.cat
  });

  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            width: MediaQuery.of(context).size.width * 0.90,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFC7C7C7),
                  spreadRadius: 5.0,
                  blurRadius: 30.0,
                  offset: Offset(0, 0)
                )
              ]
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 160),
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        cat.name,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0
                        ),
                      ),
                      CommonFn.showGenderIcon(cat.gender)
                    ],
                  ),

                  SizedBox(height: 5.0,),

                  Text(
                    cat.type,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: secondaryTextColor
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Text(
                    cat.age.toString() + " years old",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: secondaryTextColor
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: themeColor,
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "Distance : " + cat.distance.toString() + " km",
                        style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 14.0
                        ),
                      )
                    ],
                  )

                ],
              ),
            )
          ),
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(top: 30.0),
              width: (MediaQuery.of(context).size.width * 0.90) * 0.45,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFFcdd6d9), Color(0xFFb9c6ca)]
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -50),
            child: Image.asset(
              cat.image,
            ),
          )
          
        ],
      ),
    );
  }
}
