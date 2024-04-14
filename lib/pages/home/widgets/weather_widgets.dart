import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/home/home_controller.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../../../utils/configuration.dart';

Widget weather(HomeController controller) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: Get.width / 7,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: blackOpacity,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(width: 0.2, color: greyBorder)),
        child: Obx(() => controller.isWeather.value != false
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(controller.weathers!.name.toString(),
                      style: whiteTitleSmall),
                  paddingVertical8(),
                  controller.weathers?.main != null
                      ? Text("${controller.weathers!.main!.temp!.round()} ° ",
                          style: whiteheadlineSmall)
                      : const SizedBox(),
                  paddingVertical8(),
                  Icon(
                    CupertinoIcons.sun_dust,
                    color: white,
                    size: 24,
                  ),
                  paddingVertical8(),
                  controller.weathers?.weather != null
                      ? Text(
                          controller.weathers!.weather![0]!.main.toString(),
                          style: whiteBodySmall,
                        )
                      : const SizedBox()
                ],
              )
            : SizedBox(
                child: Text(
                  "weather information is currently unavailable",
                  style: whiteTitleSmall,
                  textAlign: TextAlign.center,
                ),
              )),
      ),
    ),
  );
}
