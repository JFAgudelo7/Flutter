import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 000
  }): assert(selectedColor >= 0, 'Selected Color must be greater than 0'),
      assert(selectedColor < colorList.length, 'Selected Color must be less or equal to ${colorList.length}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );
}