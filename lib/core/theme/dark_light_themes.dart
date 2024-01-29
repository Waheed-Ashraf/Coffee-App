import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: const Color(0xff3F2305),
    secondary: const Color(0xff62FCD7),
    inversePrimary: Colors.grey.shade100,
  ),
);

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    background: const Color(0xffFFDBAF),
    primary: const Color(0xff3F2305),
    secondary: const Color(0xff62FCD7),
    inversePrimary: Colors.grey.shade900,
  ),
);
