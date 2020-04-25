import 'package:flutter/cupertino.dart';

class CategoryProvider with ChangeNotifier {
  String _categorySelected = 'cat';
  String get getCategorySelected => _categorySelected;


  void setCategorySelected(String category) {
    _categorySelected = category;
    notifyListeners();
  }

}