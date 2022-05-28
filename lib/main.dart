// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:zingo/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var myColor = const Color(0xFF091227);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
        drawerTheme: DrawerThemeData(backgroundColor: myColor),
        primaryColor: Colors.white,
        scaffoldBackgroundColor: myColor,
        appBarTheme: AppBarTheme(backgroundColor: myColor),
      ),
      home: const HomePage(),
    );
  }
}
