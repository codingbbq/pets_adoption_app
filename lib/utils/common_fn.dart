import 'package:flutter/material.dart';

import 'colors.dart';

class CommonFn {
  static showGenderIcon(int gender) {
    if(gender == 1) {
      return Icon(
        Icons.add_circle_outline,
        size: 20.0,
        color: iconColor,
      );
    }else{
      return Icon(
        Icons.remove_circle_outline,
        size: 20.0,
        color: iconColor,
      );
    }
  }
}