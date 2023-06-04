part of 'themes.dart';

class _CustonColor {
  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;
  final Color surface5;
  const _CustonColor({
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
    required this.surface5,
  });
}

const _lightCustonColor = _CustonColor(
  surface1: Color(0xFFF1F4F4),
  surface2: Color(0xFFE8EBEB),
  surface3: Color(0xFFDFE2E2),
  surface4: Color(0xFFD6D9D9),
  surface5: Color(0xFFCDD0D0),
);

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF006D38),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF73FDA2),
  onPrimaryContainer: Color(0xFF00210D),
  secondary: Color(0xFF875200),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDDBA),
  onSecondaryContainer: Color(0xFF2B1700),
  tertiary: Color(0xFF3A656F),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBEEAF6),
  onTertiaryContainer: Color(0xFF001F25),
  error: Color(0xFFAB3237),
  errorContainer: Color(0xFFFFDAD8),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410006),
  background: Color(0xFFFAFDFD),
  onBackground: Color(0xFF191C1D),
  surface: Color(0xFFFAFDFD),
  onSurface: Color(0xFF191C1D),
  surfaceVariant: Color(0xFFDDE5DA),
  onSurfaceVariant: Color(0xFF414941),
  outline: Color(0xFF717971),
  onInverseSurface: Color(0xFFEFF1F1),
  inverseSurface: Color(0xFF2E3132),
  inversePrimary: Color(0xFF54DF88),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006D38),
  outlineVariant: Color(0xFFC1C9BF),
  scrim: Color(0xFF000000),
);

const _darkCustonColor = _CustonColor(
  surface1: Color(0xFF222526),
  surface2: Color(0xFF2B2E2F),
  surface3: Color(0xFF343738),
  surface4: Color(0xFF3D4041),
  surface5: Color(0xFF46494A),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF54DF88),
  onPrimary: Color(0xFF00391A),
  primaryContainer: Color(0xFF005229),
  onPrimaryContainer: Color(0xFF73FDA2),
  secondary: Color(0xFFFFB867),
  onSecondary: Color(0xFF482900),
  secondaryContainer: Color(0xFF673D00),
  onSecondaryContainer: Color(0xFFFFDDBA),
  tertiary: Color(0xFFA2CED9),
  onTertiary: Color(0xFF01363F),
  tertiaryContainer: Color(0xFF204D56),
  onTertiaryContainer: Color(0xFFBEEAF6),
  error: Color(0xFFFFB3B0),
  errorContainer: Color(0xFF8A1922),
  onError: Color(0xFF680010),
  onErrorContainer: Color(0xFFFFDAD8),
  background: Color(0xFF191C1D),
  onBackground: Color(0xFFE1E3E3),
  surface: Color(0xFF191C1D),
  onSurface: Color(0xFFC4C7C7),
  surfaceVariant: Color(0xFF414941),
  onSurfaceVariant: Color(0xFFC1C9BF),
  outline: Color(0xFF8B938A),
  onInverseSurface: Color(0xFF191C1D),
  inverseSurface: Color(0xFFE1E3E3),
  inversePrimary: Color(0xFF006D38),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF54DF88),
  outlineVariant: Color(0xFF414941),
  scrim: Color(0xFF000000),
);
