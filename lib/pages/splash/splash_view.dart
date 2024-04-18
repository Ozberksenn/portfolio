import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_controller.dart';
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
        child: Center(
            child: Image.network(
          'https://ucarecdn.com/c168e0f9-b97e-496d-8205-000ecfde82ab/apple.png',
          width: Get.width / 6,
          height: Get.height / 6,
        )));
  }
}
