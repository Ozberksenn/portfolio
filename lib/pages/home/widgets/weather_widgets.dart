import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_controller.dart';
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
                  Text(controller.weathers!.name ?? "", style: whiteTitleSmall),
                  paddingVertical8(),
                  controller.weathers?.main != null
                      ? Text("${controller.weathers!.main!.temp!.round()} ° ",
                          style: whiteheadlineSmall)
                      : const SizedBox(),
                  paddingVertical8(),
                  weatherConditions(controller.weathers!.weather![0]!.main),
                  paddingVertical8(),
                  controller.weathers?.weather != null
                      ? Text(
                          controller.weathers!.weather![0]!.main!.tr,
                          style: whiteBodySmall,
                        )
                      : const SizedBox()
                ],
              )
            : SizedBox(
                child: Column(
                  children: [
                    const Icon(CupertinoIcons.exclamationmark),
                    Text(
                      "unavailable weather info",
                      style: whiteTitleSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
      ),
    ),
  );
}

Widget mobileWeatherWidget(HomeController controller) {
  return Column(
    children: [
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              decoration: BoxDecoration(
                  color: white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.0)),
              padding: const EdgeInsets.all(12.0),
              child: Obx(() => controller.isWeather.value != false
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          controller.weathers?.name ?? "",
                          style: whiteTitleSmall,
                        ),
                        controller.weathers?.main != null
                            ? Text(
                                "${controller.weathers?.main?.temp?.round()} ° ",
                                style: whiteheadlineSmall)
                            : const SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            controller.weathers?.weather != null
                                ? Text(
                                    controller
                                            .weathers!.weather?[0]?.main?.tr ??
                                        "",
                                    style: whiteBodySmall,
                                  )
                                : const SizedBox(),
                            weatherConditions(
                                controller.weathers?.weather?[0]?.main),
                          ],
                        )
                      ],
                    )
                  : SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.exclamationmark,
                            color: white,
                          ),
                          paddingVertical8(),
                          Text(
                            "unavailable weather info",
                            style: whiteTitleSmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
            ),
          ),
        ),
      ),
      Text(
        'Weather'.tr,
        style: whiteTitleSmall,
      )
    ],
  );
}

weatherConditions(weather) {
  switch (weather) {
    case 'Clouds':
      return Icon(
        CupertinoIcons.sun_min,
        color: white,
      );
    case 'Clear':
      return Icon(
        CupertinoIcons.sun_max,
        color: white,
      );
    case 'Rain':
      return Icon(
        CupertinoIcons.sun_dust,
        color: white,
      );
    default:
      return const SizedBox();
  }
}
