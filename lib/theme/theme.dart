import 'package:flutter/material.dart';
import 'package:portfolio/utils/configuration.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    dividerColor: greyBorder,
    dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 0.2));

ThemeData darkTheme = lightTheme;
