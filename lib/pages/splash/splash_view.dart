import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/splash/home_controller.dart';
import 'package:portfolio/utils/configuration.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: Get.height,
        color: black,
        child: const Center(
          child: Text('asd'),
        ));
  }
}
