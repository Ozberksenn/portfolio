import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/home_controller.dart';

import '../../../data/data.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_bottom_sheet_widget.dart';
import '../../../widgets/custom_icon_widget.dart';
import '../../../widgets/menu_widget.dart';
import '../dialogs/project_bottom_sheet_widget.dart';
import 'weather_widgets.dart';

Widget mobileContent() {
  return SizedBox(
    width: Get.width / 1.1,
    child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: applications.map((e) {
          return e.bottom != 1
              ? Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: custoumIcon(
                      iconName: e.name,
                      imageUrl: e.image,
                      onTap: () {
                        if (e.name == 'Projects') {
                          customBottomSheet(children: [projectBottomSheet()]);
                        } else {
                          launchToUrl(e.url);
                        }
                      }),
                )
              : const SizedBox();
        }).toList()),
  );
}

Widget content(HomeController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      menu(),
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            weather(controller),
          ],
        ),
      ),
    ],
  );
}
