import 'package:flutter/material.dart';
import 'package:radio_app/constant/color.dart';

class AppTheme {
  AppTheme._();

  static final ColorScheme _colorScheme = ColorScheme.fromSwatch(
    primarySwatch: AppColors.primaryColor,
  );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    elevation: 0,
  );

  static const CardTheme _cardTheme = CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  static final ButtonThemeData _buttonThemeData = ButtonThemeData(
    colorScheme: _colorScheme,
    textTheme: ButtonTextTheme.primary,
    // shape: const StadiumBorder(),
    buttonColor: AppColors.primaryColor,
  );

  static ThemeData light() => ThemeData.light().copyWith(
        appBarTheme: _appBarTheme,
        buttonTheme: _buttonThemeData,
        cardTheme: _cardTheme.copyWith(
          elevation: 0,
        ),
        primaryColor: AppColors.primaryColor,
      );

  static ThemeData dark() => ThemeData.dark().copyWith(
        appBarTheme: _appBarTheme,
        buttonTheme: _buttonThemeData,
        cardTheme: _cardTheme,
        primaryColorDark: AppColors.primaryColor,
        textSelectionColor: AppColors.primaryColor,
      );
}
