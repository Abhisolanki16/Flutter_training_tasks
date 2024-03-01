// ignore_for_file: must_be_immutable

import 'package:demo22/new_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isDark = false;

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // brightness: Brightness.light,
      // appBarTheme: const AppBarTheme(backgroundColor: Colors.orange)

      darkTheme: ThemeData.dark(),
      // scaffoldBackgroundColor: Colors.grey.shade800,
      // brightness: Brightness.dark,
      // appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),

      themeMode: 
      isDark ? ThemeMode.dark : ThemeMode.light,
      //  MediaQuery.platformBrightnessOf(context) == Brightness.light
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      home: const NewPage(),
    );
  }
}
