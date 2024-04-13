import 'package:flutter/material.dart';

class AppColors {
  static Color accent = const Color(0xff1ab7c3);
  static Color text = const Color(0xff212121);
  static Color textLight = const Color(0xFf8a8a8a);
  static Color scaffoldlight = const Color(0xFFF5F2F2);
}

class Themes {
  static ThemeData defaultTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldlight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.scaffoldlight,
      iconTheme: IconThemeData(color: AppColors.text),
      titleTextStyle: TextStyle(
          color: AppColors.text, fontSize: 24, fontWeight: FontWeight.w700),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.accent,
      secondary: AppColors.accent,
    ),
  );
}

class TextStyles {
  static TextStyle heading1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.text,
    fontSize: 48,
  );

  static TextStyle heading2 = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.text,
    fontSize: 32,
  );

  static TextStyle heading3 = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.text,
    fontSize: 24,
  );

  static TextStyle body1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.text,
    fontSize: 24,
  );

  static TextStyle body2 = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.text,
    fontSize: 24,
  );

  static TextStyle body3 = TextStyle(
    fontWeight: FontWeight.normal,
    color: AppColors.text,
    fontSize: 16,
  );
}
