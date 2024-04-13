import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/data.dart';
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
          paddingVertical32(),
          Text("Özberk Şen", style: whiteTitleLarge),
          Text("Developer", style: whiteBodySmall),
          paddingVertical32(),
          SizedBox(
            width: Get.width / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Experience".tr,
                    style: whiteBodySmall,
                    textAlign: TextAlign.right,
                  ),
                ),
                paddingHorizontal16(),
                Expanded(
                  flex: 3,
                  child: Text(
                    "1+ years".tr,
                    style: whiteBodySmall,
                  ),
                )
              ],
            ),
          ),
          paddingVertical16(),
          SizedBox(
            width: Get.width / 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Skill".tr,
                    style: whiteBodySmall,
                    textAlign: TextAlign.right,
                  ),
                ),
                paddingHorizontal16(),
                Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(skill.length, (index) {
                        List<String> sublist = skill[index];
                        return Row(
                            children: List.generate(sublist.length, (subIndex) {
                          return Text(
                            "${sublist[subIndex]}  ",
                            style: whiteBodySmall,
                          );
                        }));
                      })),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
