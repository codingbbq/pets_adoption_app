import 'package:flutter/material.dart';

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
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.gender,
    @required this.age,
    @required this.distance,
    @required this.location,
    @required this.owner,
    @required this.postdate,
    @required this.summary,
    @required this.image
  });

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      gender: json['gender'] as int,
      age: json['age'] as int,
      distance: json['distance'] as double,
      location: json['location'] as String,
      owner: json['owner'] as String,
      postdate: json['postdate'] as String,
      summary: json['summary'] as String,
      image: json['image'] as String
    );
  }

}