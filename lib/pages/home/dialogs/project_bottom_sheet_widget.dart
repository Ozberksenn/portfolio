import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/configuration.dart';
import '../widgets/project_card_widget.dart';
import 'bottom_sheet_header_widget.dart';

Widget projectBottomSheet() {
  return Material(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      width: Get.width / 1.2,
      height: Get.height / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: dark,
          border: Border.all(width: 0.2, color: greyBorder)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bottomHeader(title: "Projects"),
          Text(
            "My Projects",
            style: whiteTitleLarge,
          ),
          const Divider(),
          projectCard()
        ],
      ),
    ),
  );
}
