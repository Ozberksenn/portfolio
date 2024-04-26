import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/utils/app_routes.dart';
import 'utils/dictionary.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  await GetStorage.init();
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
      initialRoute: AppRoutes.home,
      locale: const Locale('tr'),
      translations: Dictionary(),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
