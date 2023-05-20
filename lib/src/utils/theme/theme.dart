import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(
      0xFFFFE200,
      <int, Color>{
        50: Color(0xFFFFF8E1),
        100: Color(0xFFFFECB3),
        200: Color(0xFFFFE082),
        300: Color(0xFFFFD54F),
        400: Color(0xFFFFCA28),
        500: Color(0xFFFFC107),
        600: Color(0xFFFFB300),
        700: Color(0xFFFFA000),
        800: Color(0xFFFF8F00),
        900: Color(0xFFFF6F00),
      },
    ),
    textTheme: TTextThenme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: const MaterialColor(
      0xFFFFE200,
      <int, Color>{
        50: Color(0xFFFFF8E1),
        100: Color(0xFFFFECB3),
        200: Color(0xFFFFE082),
        300: Color(0xFFFFD54F),
        400: Color(0xFFFFCA28),
        500: Color(0xFFFFC107),
        600: Color(0xFFFFB300),
        700: Color(0xFFFFA000),
        800: Color(0xFFFF8F00),
        900: Color(0xFFFF6F00),
      },
    ),
    textTheme: TTextThenme.darkTextTheme,
  );
}
