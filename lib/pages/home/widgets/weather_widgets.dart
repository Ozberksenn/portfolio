import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../utils/configuration.dart';

Widget weather() {
  return Container(
    width: Get.width / 6,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color: blackOpacity, borderRadius: BorderRadius.circular(16.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Bursa", style: whiteTitleSmall),
        Text("7", style: whiteTileLarge),
        Icon(
          CupertinoIcons.sun_dust,
          color: white,
          size: 24,
        ),
        Text(
          "Clear",
          style: whiteBodySmall,
        )
      ],
    ),
  );
}
