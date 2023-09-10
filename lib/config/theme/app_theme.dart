import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF1D86AD);

const List<Color> _colorTheme = [
  _customColor,
  Colors.black,
  Colors.cyan,
  Colors.green,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
            'mala la wea ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorTheme[selectedColor]);
    //brightness: Brightness.dark);
  }
}
