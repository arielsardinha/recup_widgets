import 'package:flutter/material.dart';
part 'color_schemes.g.dart';
part 'text_theme.g.dart';

abstract class Themes {
  static final themeDataLight = ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        titleTextStyle: _textTheme.titleMedium?.copyWith(
          color: _lightColorScheme.onSurface,
        ),
        surfaceTintColor: _lightColorScheme.surface,
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return _lightColorScheme.primary;
            }
            return _lightColorScheme.onBackground;
          }),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return _lightColorScheme.primaryContainer;
              }
              return null;
            },
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _lightColorScheme.onPrimary,
          backgroundColor: _lightColorScheme.primary,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        labelTextStyle: MaterialStatePropertyAll(_textTheme.bodySmall),
        surfaceTintColor: _lightColorScheme.surface,
        iconTheme: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return IconThemeData(
              color: _lightColorScheme.primary,
            );
          }
          return null;
        }),
      ),
      dialogTheme: DialogTheme(
        surfaceTintColor: _lightColorScheme.surface,
      ));

  static final themeDataDark = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    textTheme: _textTheme,
    appBarTheme: AppBarTheme(
      titleTextStyle: _textTheme.titleMedium?.copyWith(
        color: _darkColorScheme.onSurface,
      ),
      surfaceTintColor: _darkColorScheme.surface,
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return _darkColorScheme.primary;
          }
          return _darkColorScheme.onBackground;
        }),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return _darkColorScheme.primaryContainer;
            }
            return null;
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: _darkColorScheme.onPrimary,
        backgroundColor: _darkColorScheme.primary,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      labelTextStyle: MaterialStatePropertyAll(_textTheme.bodySmall),
      surfaceTintColor: _darkColorScheme.surface,
      iconTheme: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return IconThemeData(
            color: _darkColorScheme.primary,
          );
        }
        return null;
      }),
    ),
    dialogTheme: DialogTheme(
      surfaceTintColor: _darkColorScheme.surface,
    ),
  );
}
