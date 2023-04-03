import 'package:flutter/material.dart';
part 'color_schemes.g.dart';
part 'text_theme.g.dart';

abstract class Themes {
  static final themeDataLight = ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    textTheme: _textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: _lightColorScheme.onPrimary,
        backgroundColor: _lightColorScheme.primary,
      ),
    ),
  );

  static final themeDataDark = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    textTheme: _textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: _darkColorScheme.onPrimary,
        backgroundColor: _darkColorScheme.primary,
      ),
    ),
  );
}
