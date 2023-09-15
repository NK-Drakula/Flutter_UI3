import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF313131),
    titleTextStyle: TextStyle(
      color: Colors.white70,
      fontSize: 25,
    ),
  ),
  colorScheme: ColorScheme.dark(
    background: const Color(0xFF313131),
    primary: const Color(0xFF373737),
    secondary: Colors.grey[600]!,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
    size: 16,
  ),
  fontFamily: 'Poppins',
);
