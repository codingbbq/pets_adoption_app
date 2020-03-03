import 'package:flutter/material.dart';
import 'package:pets_adoption_app/components/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.green),
        elevation: 0,
        title: Column(
          children: <Widget>[
            Text("Location"),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Color(0xFF000000),
                ),
                Text("Kyiv,"),
                Text("Ukraine")
              ],
            )
          ],
        ),
      ),
      drawer: DrawerComponent(),
    );
  }
}