import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidesign/themes.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Fruit App',
      debugShowCheckedModeBanner: false,

      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.light,

      home: const MyHomePage(),
    );
  }
}

