import 'dart:convert';

import 'package:http/http.dart';
import 'package:pets_adoption_app/models/cat.dart';

class CategoryService {

  final String categoryURLCat = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";

  Future<List<Cat>> fetchData() async{
    Response res = await get(categoryURLCat);

    if(res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Cat> category = 
        body.map((dynamic item) => Cat.fromJson(item)).toList();

      return category;
    }else {
      throw "Can't get data";
    }
  }


}