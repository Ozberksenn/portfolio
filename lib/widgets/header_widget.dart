import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/configuration.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/controller/home_controller.dart';
import 'package:portfolio/pages/home/dialogs/about_me_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/dialogs/contact_bottom_sheet_widgets.dart';
import 'package:portfolio/pages/home/dialogs/project_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/widgets/popup_menu_widget.dart';
import 'package:portfolio/pages/home/widgets/weather_widgets.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_bottom_sheet_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../pages/home/widgets/map_image_widget.dart';

Widget header(AppController appController, lang) {
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
                      'About Me'.tr,
                      style: whiteBodySmall,
                    )),
                paddingHorizontal8(),
                TextButton(
                    onPressed: () =>
                        customBottomSheet(children: [contactbottomSheet()]),
                    child: Text(
                      'Contact'.tr,
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
                Container(
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(4.0)),
                    margin: const EdgeInsets.symmetric(horizontal: 12.0),
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: InkWell(
                      onTap: () => appController.changeLanguage(lang),
                      child: Text(
                        lang.toString().toUpperCase(),
                        style: Get.textTheme.titleSmall,
                      ),
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

Widget mobileHeader(HomeController controller) {
  return Container(
    height: Get.height / 4.2,
    padding: const EdgeInsets.all(18.0),
    child: Row(
      children: [
        Expanded(flex: 1, child: mobileWeatherWidget(controller)),
        paddingHorizontal16(),
        Expanded(flex: 1, child: mapImage()),
      ],
    ),
  );
}
