import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../../../utils/configuration.dart';

Widget weather() {
  return Container(
    width: Get.width / 7,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color: blackOpacity,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(width: 0.2, color: greyBorder)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Bursa", style: whiteTitleSmall),
        paddingVertical8(),
        Text("7°", style: whiteheadlineSmall),
        paddingVertical8(),
        Icon(
          CupertinoIcons.sun_dust,
          color: white,
          size: 24,
        ),
        paddingVertical8(),
        Text(
          "Clear",
          style: whiteBodySmall,
        )
      ],
    ),
  );
}
