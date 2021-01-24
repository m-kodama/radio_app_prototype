import 'package:flutter/material.dart';

class AppColors {
  static const int _primaryValue = 0xFFF03434;
  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0XFFFFEBEE),
      100: Color(0XFFFFCDD3),
      200: Color(0XFFF59A9B),
      300: Color(0XFFEE7374),
      400: Color(0XFFF95150),
      500: Color(0XFFFE3E34),
      600: Color(_primaryValue),
      700: Color(0XFFDE292E),
      800: Color(0XFFD12027),
      900: Color(0XFFC20E19),
    },
  );
}
