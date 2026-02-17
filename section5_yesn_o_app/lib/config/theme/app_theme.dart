import 'package:flutter/material.dart';

//When putting _ at the beigning of a variable, it becomes private and can only be accessed within the file it is declared in.
const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.lightGreen,
  Colors.lime,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Color index must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true, 
      colorSchemeSeed: _colorThemes[8],
      //brightness: Brightness.dark,
      );
  }
}
