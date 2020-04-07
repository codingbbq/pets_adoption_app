import 'package:flutter/material.dart';
import 'package:pets_adoption_app/pages/Detail.dart';
import 'package:pets_adoption_app/pages/Home.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/' : (BuildContext context) => Home(),
  '/detail' : (BuildContext context) => DetailPage()
};
