import 'package:flutter/material.dart';
import 'package:pets_adoption_app/routes/routes.dart';

void main() => runApp(PetAdoptionApp());

class PetAdoptionApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
    );
  }
}