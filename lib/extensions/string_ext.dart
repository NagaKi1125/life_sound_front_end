import 'package:flutter/material.dart';
import 'package:life_sound/router/app_router.dart';


extension StringExt on String {
  void printWrapped() {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(this)
        .forEach((match) => debugPrint('${match.group(0)}'));
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }

}


