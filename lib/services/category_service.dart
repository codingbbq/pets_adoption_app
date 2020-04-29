import 'dart:convert';

import 'package:http/http.dart';
import 'package:pets_adoption_app/models/cat.dart';

class CategoryService {

  Future<List<Cat>> fetchData({cat: String}) async{
    
    String url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";

    switch(cat) {
      case "Cats": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;

      case "Dogs": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;

      case "Parrots": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;

      case "Bunnies": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;

      case "Horses": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;

      case "Sparrows": {
        url = "http://www.mocky.io/v2/5e971d5c3000005c00b6dbdb";
      }
      break;
    }

    Response res = await get(url);

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