import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../../../utils/configuration.dart';
import 'bottom_sheet_header_widget.dart';

Widget aboutMeBottomSheet() {
  return Material(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      width: Get.width / 3.4,
      height: Get.height / 1.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: dark,
          border: Border.all(width: 0.2, color: greyBorder)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bottomHeader(title: "About Me"),
          paddingVertical16(),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/96706849?v=4"))),
          ),
        ],
      ),
    ),
  );
}
