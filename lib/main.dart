import 'package:flutter/material.dart';
import 'package:fooderlich/screens/fooderlich_screen_app_.dart';
import 'package:fooderlich/screens/home_screen.dart';

import 'ThemeData/fooderlich_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Fooderlich',
      home: const HomeScreen(),
    );
  }
}

