import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppPalette.backgroundColor),
  );
}
