import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFFFFFF),
    titleTextStyle: TextStyle(
      color: Colors.black87,
      fontSize: 25,
    ),
  ),
  colorScheme: ColorScheme.light(
    background: const Color(0xFFFFFFFF),
    primary: const Color(0xFFF7F7F7),
    secondary: Colors.grey[200]!,

  ),
  iconTheme: const IconThemeData(
    color: Colors.black87,
    size: 16,
  ),
  fontFamily: 'Poppins',
);
