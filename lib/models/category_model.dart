import 'package:flutter/material.dart';
import 'package:pets_adoption_app/utils/colors.dart';

class Category{
  final String name;
  final Icon category;

  Category({
    this.name,
    this.category
  });
}

final Category cat = Category(
  name: "Cats",
  category: Icon(
    Icons.call,
    size: 30.0,
    color: iconColor,
  )
);

final Category dog = Category(
  name: "Dogs",
  category: Icon(
    Icons.call_end,
    size: 30.0,
    color: iconColor
  )
);

final Category parrot = Category(
  name: "Parrots",
  category: Icon(
    Icons.call_made,
    size: 30.0,
    color: iconColor
  )
);

final Category bunnies = Category(
  name: "Bunnies",
  category: Icon(
    Icons.call_merge,
    size: 30.0,
    color: iconColor
  )
);

final Category horse = Category(
  name: "Horses",
  category: Icon(
    Icons.call_missed,
    size: 30.0,
    color: iconColor
  )
);

final Category sparrow = Category(
  name: "Sparrows",
  category: Icon(
    Icons.call_missed_outgoing,
    size: 30.0,
    color: iconColor
  )
);

final List<Category> categories = [
  cat,
  dog,
  parrot,
  bunnies,
  horse,
  sparrow
];


