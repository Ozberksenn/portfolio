import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_controller.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../utils/configuration.dart';

Widget loading() {
  final HomeController controller = Get.find();
  return Container(
      width: Get.width,
      height: Get.height,
      color: black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://ucarecdn.com/c168e0f9-b97e-496d-8205-000ecfde82ab/apple.png',
            width: Get.width / 6,
            height: Get.height / 6,
          ),
          paddingVertical32(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            width: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
                ? Get.width / 3
                : Get.width / 5,
            child: LinearProgressIndicator(
              backgroundColor: white,
              minHeight: 2,
              color: black.withOpacity(0.8),
              value: controller.progress.value / 100,
              borderRadius: BorderRadius.circular(12.0),
            ),
          )
        ],
      ));
}
