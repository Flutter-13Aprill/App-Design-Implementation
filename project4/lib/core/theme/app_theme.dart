import 'package:flutter/material.dart';
import 'package:project4/core/text/text_styles.dart';
import 'package:project4/core/theme/app_palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.whiteColor,

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppPalette.blueColor,
        textStyle: TextStyles.cairo60014,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppPalette.whiteColor,
        backgroundColor: AppPalette.blueColor,
        fixedSize: Size(327, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyles.cairo60014,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: _border(AppPalette.blueColor),
      enabledBorder: _border(AppPalette.unchecked),
    ),
  );
  static OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
