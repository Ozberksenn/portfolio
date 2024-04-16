import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/configuration.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/pages/home/dialogs/about_me_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/dialogs/contact_bottom_sheet_widgets.dart';
import 'package:portfolio/pages/home/dialogs/project_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/widgets/popup_menu_widget.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_bottom_sheet_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

Widget header(AppController appController) {
  return ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: Get.width,
        height: 26,
        color: blackOpacity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                paddingHorizontal16(),
                popupMenuIcon(),
                paddingHorizontal16(),
                Text(
                  'Finder',
                  style: whiteTitleSmall,
                ),
                paddingHorizontal8(),
                TextButton(
                    onPressed: () =>
                        customBottomSheet(children: [aboutMeBottomSheet()]),
                    child: Text(
                      'About Me',
                      style: whiteBodySmall,
                    )),
                paddingHorizontal8(),
                TextButton(
                    onPressed: () =>
                        customBottomSheet(children: [contactbottomSheet()]),
                    child: Text(
                      'Contact',
                      style: whiteBodySmall,
                    )),
                paddingHorizontal8(),
                TextButton(
                    onPressed: () =>
                        customBottomSheet(children: [projectBottomSheet()]),
                    child: Text(
                      'Projects'.tr,
                      style: whiteBodySmall,
                    )),
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      appController.changeLanguage();
                    },
                    child: Text(
                      appController.selectLanguage.value.toUpperCase(),
                      style: whiteTitleSmall,
                    )),
                paddingHorizontal8(),
                Text(
                  formatDateTime(DateTime.now()),
                  style: whiteBodySmall,
                ),
                paddingHorizontal8()
              ],
            )
          ],
        ),
      ),
    ),
  );
}
