import 'package:flutter/material.dart';
import 'package:pets_adoption_app/models/cat.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class ListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: cat.map((cat) => CatCard(cat: cat)).toList()
    );
  }
}

class CatCard extends StatelessWidget {
  final Cat cat;
  CatCard({
    this.cat
  });

  
  showGenderIcon(int gender) {
    if(gender == 1) {
      return Icon(
        Icons.add_circle_outline,
        size: 20.0,
        color: iconColor,
      );
    }else{
      return Icon(
        Icons.remove_circle_outline,
        size: 20.0,
        color: iconColor,
      );
    }
  }

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
            color: Colors.white,
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
                      showGenderIcon(cat.gender)
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
