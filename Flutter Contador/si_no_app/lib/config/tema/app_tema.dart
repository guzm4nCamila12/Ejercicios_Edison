import 'package:flutter/material.dart';

class AppTema {
  final int index;

  AppTema(this.index);

  static const List<Color> _colorTemas = [
    Colors.purple,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
  ];
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemas[index],
    );
  }
}
