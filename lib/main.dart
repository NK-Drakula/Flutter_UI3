import 'package:flutter/material.dart';
import 'package:week3/app.dart';
import 'package:week3/themes/dark_theme.dart';
import 'package:week3/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week3',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,      
      home: const App(),
    );
  }
}
