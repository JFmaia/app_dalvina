import 'package:app_dalvina/config/themes/dark_theme.dart';
import 'package:app_dalvina/config/themes/light_theme.dart';
import 'package:app_dalvina/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Counter'),
    );
  }
}
