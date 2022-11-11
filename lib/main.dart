import 'package:flutter/material.dart';
import 'package:webpage/explore_basic/screens/home_page.dart';
import 'package:webpage/explore_basic/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const HomePage(),
    );
  }
}
