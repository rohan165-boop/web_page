import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webpage/explore_basic/screens/home_page.dart';
import 'package:webpage/explore_basic/utils/authentication.dart';
import 'package:webpage/explore_basic/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getUserInfo() async {
    await getUser();
    setState(() {});
    log(uid.toString());
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

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
