import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/utils/app_routes.dart';
import 'controller/home_controller.dart';
import 'utils/dictionary.dart';

void main() {
  Get.put(HomeController());
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
      getPages: routes(),
      initialRoute: AppRoutes.splash,
      locale: const Locale('tr'),
      translations: Dictionary(),
    );
  }
}
