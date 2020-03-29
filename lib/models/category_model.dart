class Category{
  final String name;

  Category({
    this.name 
  });
}

final Category cat = Category(
  name: "Cats"
);

final Category dog = Category(
  name: "Dogs"
);

final Category parrot = Category(
  name: "Parrots"
);

final Category bunnies = Category(
  name: "Bunnies"
);

final Category horse = Category(
  name: "Horses"
);

final Category sparrow = Category(
  name: "Sparrows"
);

final List<Category> categories = [
  cat,
  dog,
  parrot,
  bunnies,
  horse,
  sparrow
];


