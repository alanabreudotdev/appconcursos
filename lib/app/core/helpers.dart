
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Helpers {

  final TransitionType transitions = TransitionType.scale;

Color parseColor(String color) {
  String hex = color.replaceAll("#", "");
  if (hex.isEmpty) hex = "ffffff";
  if (hex.length == 3) {
    hex =
        '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
  }
  Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
  return col;
}

List colorSwitch = [
  Colors.blueAccent[300],
  Colors.blueGrey[300],
  Colors.pink[200],
  Colors.cyan,
  Colors.cyanAccent,
  Colors.green,
  Colors.indigo[300],
  Colors.lightBlue[300],
  Colors.orange
];

}