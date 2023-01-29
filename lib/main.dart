import 'package:flutter/material.dart';
import 'package:mealstore/Screens/bottom_home_nav.dart';
import 'package:mealstore/Screens/bottom_login_nav.dart';
import 'package:mealstore/Screens/desc_screen.dart';
import 'package:mealstore/Screens/home_grid.dart';
import 'package:mealstore/Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: bottomnav(),
    );
  }
}

