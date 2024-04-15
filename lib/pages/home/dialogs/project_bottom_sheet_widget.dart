import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/data.dart';
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Projects",
                  style: whiteTitleLarge,
                ),
                const Divider(),
                SizedBox(
                  height: Get.height / 1.6,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2, crossAxisCount: 2),
                      itemCount: projectData.length,
                      itemBuilder: (context, index) {
                        return projectCard(
                            title: projectData[index].name,
                            description: projectData[index].description,
                            imageUrl:
                                "https://ucarecdn.com/9a68fd1e-dfd1-47a1-85ef-b9914f625c90/Image.png",
                            icon: projectData[index].profileUrl);
                      }),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
