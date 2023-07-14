import 'package:flutter/material.dart';

part 'color_schemes.g.dart';
part 'text_theme.g.dart';

sealed class RecupTheme {

  static RecupCustomColor custonColor(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    if (brightness == Brightness.light) {
      return _lightCustonColor;
    }
    return _darkCustonColor;
  }

  static Map<String, Color> colorSchemeList(BuildContext context){
    final s = Theme.of(context).colorScheme;
    return {
      "primary" :  s.primary,
      "onPrimary" :  s.onPrimary,
      "primaryContainer" :  s.primaryContainer,
      "onPrimaryContainer" :  s.onPrimaryContainer,
      //
      "secondary" :  s.secondary,
      "onSecondary" :  s.onSecondary,
      "secondaryContainer" :  s.secondaryContainer,
      "onSecondaryContainer" :  s.onSecondaryContainer,
      //
      "tertiary" :  s.tertiary,
      "onTertiary" :  s.onTertiary,
      "tertiaryContainer" :  s.tertiaryContainer,
      "onTertiaryContainer" :  s.onTertiaryContainer,
      //
      "error" :  s.error,
      "onError" :  s.onError,
      "errorContainer" :  s.errorContainer,
      "onErrorContainer" :  s.onErrorContainer,
      //
      "background" :  s.background,
      "onBackground" :  s.onBackground,
      "surface" :  s.surface,
      "onSurface" :  s.onSurface,
      //
      "surfaceVariant" :  s.surfaceVariant,
      "onSurfaceVariant" :  s.onSurfaceVariant,
      "inverseSurface" :  s.inverseSurface,
      "onInverseSurface" :  s.onInverseSurface,
      "outline" :  s.outline,
      "outlineVariant" :  s.outlineVariant,
      //
      "surfaceTint" : s.surfaceTint,
      "shadow" : s.shadow,
      // "scrim" : s.scrim,
    };
  }

  static final themeDataLight = ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    textTheme: _textTheme,
    appBarTheme: AppBarTheme(
      surfaceTintColor: _lightCustonColor.surface1,
      backgroundColor: _lightCustonColor.surface1,
      scrolledUnderElevation: 0,
      titleTextStyle: _textTheme.titleMedium?.copyWith(
        color: _lightColorScheme.onSurface,
      ),
      titleSpacing: 0,
      iconTheme: IconThemeData(
        color: _lightColorScheme.primary,
      ),
      shape: Border(
        bottom: BorderSide(
          color: _lightColorScheme.outlineVariant,
          width: 0.5,
        ),
      ),
    ),
    buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12)),
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
    navigationBarTheme: NavigationBarThemeData(
      // indicatorColor: Colors.transparent,
      labelTextStyle: MaterialStatePropertyAll(_textTheme.bodySmall),
      surfaceTintColor: _lightCustonColor.surface1,
      backgroundColor: _lightCustonColor.surface1,
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
    ),
  );

  static final themeDataDark = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    textTheme: _textTheme,
    buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12)),
    appBarTheme: AppBarTheme(
      surfaceTintColor: _darkCustonColor.surface1,
      backgroundColor: _darkCustonColor.surface1,
      scrolledUnderElevation: 0,
      titleTextStyle: _textTheme.titleMedium?.copyWith(
        color: _darkColorScheme.onSurface,
      ),
      titleSpacing: 0,
      iconTheme: IconThemeData(
        color: _darkColorScheme.primary,
      ),
      shape: Border(
        bottom: BorderSide(
          color: _darkColorScheme.outlineVariant,
          width: 0.5,
        ),
      ),
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
    navigationBarTheme: NavigationBarThemeData(
      // indicatorColor: Colors.transparent,
      labelTextStyle: MaterialStatePropertyAll(_textTheme.bodySmall),
      surfaceTintColor: _darkCustonColor.surface1,
      backgroundColor: _darkCustonColor.surface1,
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
