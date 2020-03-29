class Cat {
  final int id;
  final String name;
  final String type;
  final int gender;
  final int age;
  final double distance;
  final String location;
  final String owner;
  final String postdate;
  final String summary;
  final String image;

  Cat({
    this.id,
    this.name,
    this.type,
    this.gender,
    this.age,
    this.distance,
    this.location,
    this.owner,
    this.postdate,
    this.summary,
    this.image
  });

}

final List<Cat> cat = [

  Cat(
    id: 1,
    name: "Sola",
    type: "Abbysinian Cat",
    gender: 1,
    age: 2,
    distance: 3.5,
    location: "5 Bouvlerian street",
    owner: "Maya Doe",
    postdate: "25th March 2020",
    summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/cat/cat-1.png"
  ),

  Cat(
    id: 2,
    name: "Orion",
    type: "Abbysinian Cat",
    gender: 0,
    age: 2,
    distance: 3.5,
    location: "5 Bouvlerian street",
    owner: "Maya Doe",
    postdate: "25th March 2020",
    summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    image: "assets/images/cat/cat-2.png"
  ),


];