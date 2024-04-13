import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/home/home_view.dart';
import 'package:portfolio/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Portfolio',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
