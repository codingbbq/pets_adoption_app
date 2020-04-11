import 'package:flutter/material.dart';

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
  category: Icon(Icons.call)
);

final Category dog = Category(
  name: "Dogs",
  category: Icon(Icons.call_end)
);

final Category parrot = Category(
  name: "Parrots",
  category: Icon(Icons.call_made)
);

final Category bunnies = Category(
  name: "Bunnies",
  category: Icon(Icons.call_merge)
);

final Category horse = Category(
  name: "Horses",
  category: Icon(Icons.call_missed)
);

final Category sparrow = Category(
  name: "Sparrows",
  category: Icon(Icons.call_missed_outgoing)
);

final List<Category> categories = [
  cat,
  dog,
  parrot,
  bunnies,
  horse,
  sparrow
];


