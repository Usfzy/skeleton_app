import 'package:flutter/material.dart';

import '../core/utils/colors.dart';


ThemeData get theme => ThemeData(
  fontFamily: 'RobotoCondensed',
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: kPrimaryColor,
    onPrimary: kOnPrimaryColor,
    secondary: kSecondaryColor,
    onSecondary: kOnSecondaryColor,
    error: kErrorColor,
    onError: kOnErrorColor,
    background: kBackgroundColor,
    onBackground: kOnBackgroundColor,
    surface: kSurfaceColor,
    onSurface: kOnSurfaceColor,
  ),
  textTheme: textTheme,
  iconTheme: const IconThemeData(color: kIconColor),
);

TextTheme get textTheme => const TextTheme(
  displayLarge: TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  displayMedium: TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  displaySmall: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  headlineLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  headlineMedium: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: kFontColor,
  ),
  titleSmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  labelMedium: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
  labelSmall: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: kFontColor,
  ),
);

extension ThemeExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;

  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;
}