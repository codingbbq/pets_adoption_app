import 'package:flutter/material.dart';
import 'package:pets_adoption_app/models/cat.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            width: MediaQuery.of(context).size.width * 0.90,
            height: 100,
            color: Colors.grey,
            child: Text(cat.name)
          ),
          Container(
            width: (MediaQuery.of(context).size.width * 0.90) * 0.40,
            height: 50,
            color: Colors.red,
            child: Text(cat.name)
          )
        ],
      ),
    );
  }
}
